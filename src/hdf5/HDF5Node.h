#ifndef __HDF5NODE__
#define __HDF5NODE__

#include <string>
#include <map>
#include "hdf5/exceptions/h5exception.h"
#include "hdf5/types/hid_gc.h"
#include "hdf5/types/implicitdowncast.h"

namespace DAL {

/*!
 * Represents a node in the HDF5 hierarchy (an attribute, group, or dataset).
 */
class HDF5Node {
public:
  HDF5Node( const std::string &name ): _name(name) {}

  virtual ~HDF5Node() {} // a destructor makes this class polymorphic, allowing dynamic_cast

  /*!
   * Returns the HDF5 name of this node.
   */
  std::string name() const { return _name; }

  /*!
   * Returns whether this element exists in the HDF5 file.
   */
  virtual bool exists() const { return false; }

protected:
  const std::string _name;

private:
  HDF5Node &operator=( const HDF5Node & );
};

/*!
 * Represents a set in the HDF5 hierarchy (a file, group or dataset;
 * anything that can have attributes and hold other nodes).
 */
class HDF5NodeSet: public HDF5Node {
public:
  HDF5NodeSet( const std::string &name ): HDF5Node(name), mapInitialised(false) {}

  virtual ~HDF5NodeSet();

  /*!
   * Returns the HDF5 identifier for this set, which is required
   * when accessing substructures.
   */
  virtual const hid_gc &group() = 0;

private:
  // The map containing all (registered) nodes in this set
  std::map<std::string, HDF5Node*> nodeMap;

  // Whether nodeMap is initialised through initNodes()
  bool mapInitialised;

protected:
  /*!
   * Add all known nodes to the map. This function will be called
   * when a node is requested.
   */
  virtual void initNodes() {}

  /*!
   * Add a node to the map. Ownerschip is taken.
   */
  void addNode( HDF5Node *attr );

  /*!
   * Retrieve a node from the map. initNodes() is called
   * if needed, and an exception is thrown if the group
   * has not been opened or created yet.
   */

  ImplicitDowncast<HDF5Node> getNode( const std::string &name );

  /*!
   * Remove all registered nodes from the map and delete them.
   */
  void freeNodeMap();
};

}

#include "HDF5Node.tcc"

#endif

