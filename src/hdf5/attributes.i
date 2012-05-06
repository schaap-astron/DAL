// rename otherwise unreachable functions
%rename(get_hid_t)  operator hid_t;
%rename(get_hid_gc) operator hid_gc;

// member functions that return *this are problematic,
// because SWIG generates a new wrapper object and does not
// know how to do the memory management right between
// both wrapper objects. So we write our own further below.
%rename(_create) DAL::Attribute::create;

%ignore DAL::Attribute::value;

%include hdf5/HDF5Node.h
%include hdf5/HDF5Attribute.h

%extend DAL::Attribute {
  %pythoncode {
    def create(self):
      self._create()
      return self

    @property
    def value(self):
      if not self.exists():
        return None

      return self.get()

    @value.setter
    def value(self, val):
      if not self.exists():
        self.create()

      try:
        self.set(val)
      except TypeError:
        raise TypeError("'%s' cannot be assigned values of type '%s'" % (self.__class__.__name__, type(val).__name__,))

    @value.deleter
    def value(self):
      if self.exists():
        self.remove()
  }
}

namespace DAL {
  using namespace std;

  %template(AttributeBool)      Attribute<bool>;
  %template(AttributeUnsigned)  Attribute<unsigned>;
  %template(AttributeDouble)    Attribute<double>;
  %template(AttributeString)    Attribute<string>;

  %template(AttributeVUnsigned) Attribute< vector<unsigned> >;
  %template(AttributeVDouble)   Attribute< vector<double> >;
  %template(AttributeVString)   Attribute< vector<string> >;

  %template(AttributeUnsigned3)     Attribute< Tuple<unsigned,3> >;
  %template(AttributeDouble3)       Attribute< Tuple<double,3> >;

  %template(AttributeVUnsigned3)    Attribute< vector< Tuple<unsigned,3> > >;
  %template(AttributeVDouble3)      Attribute< vector< Tuple<double,3> > >;
}
