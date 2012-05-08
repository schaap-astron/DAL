#include "hdf5/HDF5Node.h"
#include "hdf5/HDF5Attribute.h"
#include "hdf5/HDF5GroupBase.h"
#include <string>

using namespace std;

namespace DAL {

HDF5NodeSet::HDF5NodeSet( const std::string &name )
:
  HDF5Node(name),
  mapInitialised(false)
{
}

HDF5NodeSet::~HDF5NodeSet()
{
  freeNodeMap();
}

VersionType HDF5NodeSet::fileVersion()
{
  HDF5GroupBase rootGroup(group(), "/");
  Attribute<string> versionAttr(rootGroup.group(), "VERSION");

  if (!versionAttr.exists())
    return VersionType();

  return VersionType(versionAttr.get());  
}

void HDF5NodeSet::addNode( HDF5Node *attr )
{
  if (!attr)
    throw DALValueError("attr cannot be NULL");

  if (nodeMap.find(attr->name()) != nodeMap.end())
    throw DALValueError(string("Node already exists: ") + attr->name()); 

  nodeMap[attr->name()] = attr;
}

void HDF5NodeSet::ensureNodesExist()
{
  if (!exists())
    throw DALException("Cannot access nodes in a non-existing group");

  if (!mapInitialised) {
    initNodes();
    mapInitialised = true;
  }
}

ImplicitDowncast<HDF5Node> HDF5NodeSet::getNode( const std::string &name )
{
  ensureNodesExist();
 
  if (nodeMap.find(name) == nodeMap.end())
    throw DALValueError(string("Node not found: ") + name);

  return *nodeMap[name];
}

vector<string> HDF5NodeSet::nodeNames() {
  ensureNodesExist();

  vector<string> names;
  names.reserve(nodeMap.size());

  for( map<string, HDF5Node*>::const_iterator i = nodeMap.begin(); i != nodeMap.end(); ++i ) {
    names.push_back(i->first);
  }

  return names;
}

void HDF5NodeSet::freeNodeMap()
{
  for( map<string, HDF5Node*>::const_iterator i = nodeMap.begin(); i != nodeMap.end(); ++i ) {
    delete i->second;
  }

  nodeMap.clear();
}

}
