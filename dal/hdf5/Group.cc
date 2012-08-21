/* Copyright 2011-2012  ASTRON, Netherlands Institute for Radio Astronomy
 * This file is part of the Data Access Library (DAL).
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either 
 * version 3 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public 
 * License along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */
#include "Group.h"

using namespace std;

namespace DAL {

Group::Group()
:
  mapInitialised(false)
{
}

Group::Group( const Group &other )
:
  Node(other.parent, other._name),
  _group(other._group),
  mapInitialised(false)
{
}

Group::Group( Group &parent, const std::string &name )
:
  Node(parent, name),
  mapInitialised(false)
{
}

Group::Group( const hid_gc &fileId )
:
  Node(fileId, "/"),
  _group(fileId),
  mapInitialised(false)
{
}

Group::~Group() {
  freeNodeMap();
}

Group& Group::operator=(Group rhs)
{
  swap(*this, rhs);
  return *this;
}

void swap(Group& first, Group& second)
{
  swap(static_cast<Node&>(first), static_cast<Node&>(second));
  swap(first._group, second._group);
  first.nodeMap.swap(second.nodeMap);
  std::swap(first.mapInitialised, second.mapInitialised);
}

void Group::create() {
  hid_gc_noref gcpl(H5Pcreate(H5P_GROUP_CREATE), H5Pclose, "Could not create group creation property list to create group " + _name);

  _group = hid_gc(H5Gcreate2(parent, _name.c_str(), H5P_DEFAULT, gcpl, H5P_DEFAULT), H5Gclose, "Could not create group " + _name);
}

bool Group::exists() const {
  // The root group always exists, but H5Lexists() won't work on it.
  if (_name == "/")
    return true;

  return H5Lexists(parent, _name.c_str(), H5P_DEFAULT) > 0; // TODO: Does this check whether the link is a group?
}

void Group::remove() const {
  if (H5Ldelete(parent, _name.c_str(), H5P_DEFAULT) < 0)
    throw HDF5Exception("Could not remove group " + _name); 
}

void Group::set( const Group &other, bool deepcopy ) {
  if (exists()) {
    // maybe rename the attribute instead, in case the copying fails?
    remove();
  }

  hid_gc ocpl(H5Pcreate(H5P_OBJECT_COPY), H5Pclose, "Could not create object creation property list to set group " + _name);

  if (!deepcopy) {
    // do a shallow copy
    if (H5Pset_copy_object(ocpl, H5O_COPY_SHALLOW_HIERARCHY_FLAG) < 0) {
      throw HDF5Exception("Could not enable shallow copy mode to set group " + _name);
    }
  }

  // H5Ocopy allows us to copy all properties, subgroups, etc, even across files
  if (H5Ocopy(other.parent, other._name.c_str(), parent, _name.c_str(), ocpl, H5P_DEFAULT) < 0)
    throw HDF5Exception("Could not copy object to set group " + _name);
}

hid_gc Group::open( hid_t parent, const std::string &name ) const
{
  return hid_gc(H5Gopen2(parent, name.c_str(), H5P_DEFAULT), H5Gclose, "Could not open group " + _name);
}

void Group::initNodes()
{
  addNode(new Attribute<string>(*this, "GROUPTYPE"));
  mapInitialised = true;
}

Attribute<string> Group::groupType()
{
  return getNode("GROUPTYPE");
}

const hid_gc &Group::group() {
  // deferred opening of group, as it may need to be created first
  if (!_group.isset())
    _group = open(parent, _name);

  return _group;
}

void Group::addNode( Node *attr )
{
  if (!attr)
    throw DALValueError("Could not add NULL node");

  if (nodeMap.find(attr->name()) != nodeMap.end())
    throw DALValueError("Could not add already existing node " + attr->name()); 

  nodeMap[attr->name()] = attr;
}

void Group::ensureNodesExist()
{
  if (!exists())
    throw DALException("Could not access nodes in a non-existing group " + _name);

  if (!mapInitialised)
    initNodes();
}

ImplicitDowncast<Node> Group::getNode( const std::string &name )
{
  ensureNodesExist();
 
  if (nodeMap.find(name) == nodeMap.end())
    throw DALValueError("Could not get (find) node " + name);

  return *nodeMap[name];
}

vector<string> Group::nodeNames() {
  ensureNodesExist();

  vector<string> names;
  names.reserve(nodeMap.size());

  for( map<string, Node*>::const_iterator i = nodeMap.begin(); i != nodeMap.end(); ++i ) {
    names.push_back(i->first);
  }

  return names;
}

void Group::freeNodeMap()
{
  mapInitialised = false;

  for( map<string, Node*>::const_iterator i = nodeMap.begin(); i != nodeMap.end(); ++i ) {
    delete i->second;
  }

  nodeMap.clear();
}

vector<string> Group::memberNames() {
  vector<string> names;
  H5G_info_t groupInfo;

  if (H5Gget_info(group(), &groupInfo) < 0)
    throw HDF5Exception("Could not get info with number of member names for group " + _name);

  // Loop around H5Lget_name_by_idx(). Can also use H5Literate(), but it is more fuss for what we need here.
  char linkName[128];
  for (size_t i = 0; i < groupInfo.nlinks; i++) {
    // Use H5_INDEX_NAME, because for H5_INDEX_CRT_ORDER, it had to be created with a creation index.
    ssize_t size = H5Lget_name_by_idx(group(), ".", H5_INDEX_NAME, H5_ITER_NATIVE, i, linkName, sizeof linkName, H5P_DEFAULT);
    if (size < 0)
      throw HDF5Exception("Could not get link member name by index for group " + _name); // TODO: _name is "" for TBB_File::stations(); should be "/"
    linkName[sizeof linkName - 1] = '\0'; // unclear if H5Lget_name_by_idx() always terminates, so do it.

    names.push_back(linkName);
  }

  return names;
}

}

