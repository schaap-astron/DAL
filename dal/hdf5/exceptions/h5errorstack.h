#ifndef __H5ERRORSTACK__
#define __H5ERRORSTACK__

#include <hdf5.h>
#include <string>
#include <vector>
#include <sstream>

/*
 * See http://www.hdfgroup.org/HDF5/doc/UG/13_ErrorHandling.html
 * and http://www.hdfgroup.org/HDF5/doc/RM/RM_H5E.html
 */

namespace DAL {

/*!
 * Saves and restores the current error stack. Useful for preserving
 * the HDF5 error state if it cannot be counted on to be empty.
 *
 * Example usage as a scope guard:
 *   {
 *      ScopedErrorStack ses();
 *
 *      ... code that can generate and handle HDF5 errors ...
 *   }
 */
class ScopedErrorStack {
public:
  ScopedErrorStack();
  ~ScopedErrorStack();
private:
  const hid_t olderrorstack;
};

/*!
 * Prevent HDF5 from printing errors directly on stderr within
 * the scope of any DisableErrorPrinting object.
 *
 * Note that this class disables any automatic error handling
 * mechanism installed into HDF5, including those installed
 * by other libraries using HDF5, if any.
 */
class DisableErrorPrinting {
public:
  DisableErrorPrinting();
  ~DisableErrorPrinting();
private:  
  H5E_auto2_t oldhandler;
  void *oldclientdata;
};

/*!
 * All information about a single stack-trace line for HDF5 error handling routines.
 */
struct HDF5StackLine {
  unsigned n;            //!< Index number within this stack trace (starting at 0)

  hid_t cls_id;          //!< Identifier for the module generating this error
  hid_t maj_num;         //!< Major error number
  hid_t min_num;         //!< Minor error number

  unsigned line;         //!< Source line number
  std::string func_name; //!< Source function name
  std::string file_name; //!< Source file name

  std::string desc;      //!< Error description

  std::string cls;       //!< Module in which error occurred ("HDF5" for all errors generated by HDF5)
  std::string maj;       //!< Description of major error number
  std::string min;       //!< Description of minor error number

  /*!
   * Returns a short description of this stack line, useful for reporting errors.
   */
  std::string shortDesc() const;

  /*!
   * Returns an extensive description of this stack line, useful for debugging errors.
   */
  std::string longDesc() const;
};


/*!
 * Saves and wraps the current HDF5 error stack.
 */
class HDF5ErrorStack {
public:
  /*!
   * Retrieve and save the HDF5 error stack upon construction. The HDF5 error
   * stack itself remains unchanged.
   */
  HDF5ErrorStack();

  /*!
   * Clear the HDF5 error stack
   */
  static void clear();

  /*!
   * The HDF5 error stack as it was when this object was constructed.
   */
  std::vector<struct HDF5StackLine> stack;

private:  
  static herr_t walker(unsigned n, const H5E_error2_t *err_desc, void *clientdata);
};

}

#endif
