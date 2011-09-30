
// File: index.xml

// File: classLDA_1_1Attribute.xml
%feature("docstring") LDA::Attribute "";

%feature("docstring")  LDA::Attribute::Attribute "LDA::Attribute< T
>::Attribute(const hid_gc &container, const std::string &name) ";

%feature("docstring")  LDA::Attribute::get "T LDA::Attribute< T
>::get() const ";

%feature("docstring")  LDA::Attribute::set "void LDA::Attribute< T
>::set(const T &value) const ";

%feature("docstring")  LDA::Attribute::set "void LDA::Attribute<
std::string >::set(const std::string &value) const ";

%feature("docstring")  LDA::Attribute::get "std::string
LDA::Attribute< std::string >::get() const ";


// File: classLDA_1_1AttributeV.xml
%feature("docstring") LDA::AttributeV "";

%feature("docstring")  LDA::AttributeV::AttributeV "LDA::AttributeV<
T >::AttributeV(const hid_gc &container, const std::string &name) ";

%feature("docstring")  LDA::AttributeV::get "std::vector< U >
LDA::AttributeV< U >::get() const ";

%feature("docstring")  LDA::AttributeV::set "void LDA::AttributeV< T
>::set(const std::vector< T > &value) const ";

%feature("docstring")  LDA::AttributeV::set "void LDA::AttributeV<
std::string >::set(const std::vector< std::string > &value) const ";

%feature("docstring")  LDA::AttributeV::get "std::vector< std::string
> LDA::AttributeV< std::string >::get() const ";


// File: classLDA_1_1BeamFormedFile.xml
%feature("docstring") LDA::BeamFormedFile "";

%feature("docstring")  LDA::BeamFormedFile::BeamFormedFile "LDA::BeamFormedFile::BeamFormedFile(const std::string &filename, enum
fileMode mode=READ) ";

%feature("docstring")  LDA::BeamFormedFile::createOfflineOnline "Attribute< string > LDA::BeamFormedFile::createOfflineOnline() ";

%feature("docstring")  LDA::BeamFormedFile::BFFormat "Attribute<
string > LDA::BeamFormedFile::BFFormat() ";

%feature("docstring")  LDA::BeamFormedFile::BFVersion "Attribute<
string > LDA::BeamFormedFile::BFVersion() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeStartUTC "Attribute< string > LDA::BeamFormedFile::expTimeStartUTC() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeStartMJD "Attribute< double > LDA::BeamFormedFile::expTimeStartMJD() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeStartTAI "Attribute< string > LDA::BeamFormedFile::expTimeStartTAI() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeEndUTC "Attribute<
string > LDA::BeamFormedFile::expTimeEndUTC() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeEndMJD "Attribute<
double > LDA::BeamFormedFile::expTimeEndMJD() ";

%feature("docstring")  LDA::BeamFormedFile::expTimeEndTAI "Attribute<
string > LDA::BeamFormedFile::expTimeEndTAI() ";

%feature("docstring")  LDA::BeamFormedFile::totalIntegrationTime "Attribute< double > LDA::BeamFormedFile::totalIntegrationTime() ";

%feature("docstring")  LDA::BeamFormedFile::observationDatatype "Attribute< string > LDA::BeamFormedFile::observationDatatype() ";

%feature("docstring")  LDA::BeamFormedFile::subArrayPointingDiameter "Attribute< double > LDA::BeamFormedFile::subArrayPointingDiameter() ";

%feature("docstring")  LDA::BeamFormedFile::bandwidth "Attribute<
double > LDA::BeamFormedFile::bandwidth() ";

%feature("docstring")  LDA::BeamFormedFile::beamDiameter "Attribute<
double > LDA::BeamFormedFile::beamDiameter() ";

%feature("docstring")  LDA::BeamFormedFile::weatherTemperature "AttributeV< double > LDA::BeamFormedFile::weatherTemperature() ";

%feature("docstring")  LDA::BeamFormedFile::weatherHumidity "AttributeV< double > LDA::BeamFormedFile::weatherHumidity() ";

%feature("docstring")  LDA::BeamFormedFile::systemTemperature "AttributeV< double > LDA::BeamFormedFile::systemTemperature() ";

%feature("docstring")  LDA::BeamFormedFile::nofSubArrayPointings "Attribute< unsigned > LDA::BeamFormedFile::nofSubArrayPointings() ";

%feature("docstring")  LDA::BeamFormedFile::subArrayPointing "BF_SubArrayPointing LDA::BeamFormedFile::subArrayPointing(unsigned nr)
";

%feature("docstring")  LDA::BeamFormedFile::sysLog "SysLog
LDA::BeamFormedFile::sysLog() ";


// File: classLDA_1_1BF__BeamGroup.xml
%feature("docstring") LDA::BF_BeamGroup "";

%feature("docstring")  LDA::BF_BeamGroup::nofStations "Attribute<
unsigned > LDA::BF_BeamGroup::nofStations() ";

%feature("docstring")  LDA::BF_BeamGroup::stationsList "AttributeV<
string > LDA::BF_BeamGroup::stationsList() ";

%feature("docstring")  LDA::BF_BeamGroup::pointRA "Attribute< double
> LDA::BF_BeamGroup::pointRA() ";

%feature("docstring")  LDA::BF_BeamGroup::pointDEC "Attribute< double
> LDA::BF_BeamGroup::pointDEC() ";

%feature("docstring")  LDA::BF_BeamGroup::pointOffsetRA "Attribute<
double > LDA::BF_BeamGroup::pointOffsetRA() ";

%feature("docstring")  LDA::BF_BeamGroup::pointOffsetDEC "Attribute<
double > LDA::BF_BeamGroup::pointOffsetDEC() ";

%feature("docstring")  LDA::BF_BeamGroup::foldedData "Attribute< bool
> LDA::BF_BeamGroup::foldedData() ";

%feature("docstring")  LDA::BF_BeamGroup::foldPeriod "Attribute<
double > LDA::BF_BeamGroup::foldPeriod() ";

%feature("docstring")  LDA::BF_BeamGroup::foldPeriodUnit "Attribute<
string > LDA::BF_BeamGroup::foldPeriodUnit() ";

%feature("docstring")  LDA::BF_BeamGroup::dedispersion "Attribute<
string > LDA::BF_BeamGroup::dedispersion() ";

%feature("docstring")  LDA::BF_BeamGroup::dedispersionMeasure "Attribute< double > LDA::BF_BeamGroup::dedispersionMeasure() ";

%feature("docstring")  LDA::BF_BeamGroup::dedispersionMeasureUnit "Attribute< string > LDA::BF_BeamGroup::dedispersionMeasureUnit() ";

%feature("docstring")  LDA::BF_BeamGroup::nofStokes "Attribute<
unsigned > LDA::BF_BeamGroup::nofStokes() ";

%feature("docstring")  LDA::BF_BeamGroup::stokesComponents "AttributeV< string > LDA::BF_BeamGroup::stokesComponents() ";

%feature("docstring")  LDA::BF_BeamGroup::complexVoltages "Attribute<
bool > LDA::BF_BeamGroup::complexVoltages() ";

%feature("docstring")  LDA::BF_BeamGroup::signalSum "Attribute<
string > LDA::BF_BeamGroup::signalSum() ";

%feature("docstring")  LDA::BF_BeamGroup::stokes "BF_StokesDataset
LDA::BF_BeamGroup::stokes(unsigned nr) ";

%feature("docstring")  LDA::BF_BeamGroup::coordinates "CoordinatesGroup LDA::BF_BeamGroup::coordinates() ";


// File: classLDA_1_1BF__ProcessingHistory.xml
%feature("docstring") LDA::BF_ProcessingHistory "";

%feature("docstring")  LDA::BF_ProcessingHistory::parsetObs "Attribute< bool > LDA::BF_ProcessingHistory::parsetObs() ";

%feature("docstring")  LDA::BF_ProcessingHistory::logPresto "Attribute< bool > LDA::BF_ProcessingHistory::logPresto() ";

%feature("docstring")  LDA::BF_ProcessingHistory::parFile "Attribute<
bool > LDA::BF_ProcessingHistory::parFile() ";


// File: classLDA_1_1BF__StokesDataset.xml
%feature("docstring") LDA::BF_StokesDataset "";

%feature("docstring")  LDA::BF_StokesDataset::stokesComponent "Attribute< string > LDA::BF_StokesDataset::stokesComponent() ";

%feature("docstring")  LDA::BF_StokesDataset::nofChannels "AttributeV< unsigned > LDA::BF_StokesDataset::nofChannels() ";

%feature("docstring")  LDA::BF_StokesDataset::nofSubbands "Attribute<
unsigned > LDA::BF_StokesDataset::nofSubbands() ";

%feature("docstring")  LDA::BF_StokesDataset::nofSamples "Attribute<
unsigned > LDA::BF_StokesDataset::nofSamples() ";


// File: classLDA_1_1BF__SubArrayPointing.xml
%feature("docstring") LDA::BF_SubArrayPointing "";

%feature("docstring")  LDA::BF_SubArrayPointing::nofStations "Attribute< unsigned > LDA::BF_SubArrayPointing::nofStations() ";

%feature("docstring")  LDA::BF_SubArrayPointing::stationsList "AttributeV< string > LDA::BF_SubArrayPointing::stationsList() ";

%feature("docstring")  LDA::BF_SubArrayPointing::pointRA "Attribute<
double > LDA::BF_SubArrayPointing::pointRA() ";

%feature("docstring")  LDA::BF_SubArrayPointing::pointDEC "Attribute<
double > LDA::BF_SubArrayPointing::pointDEC() ";

%feature("docstring")  LDA::BF_SubArrayPointing::clockRate "Attribute< double > LDA::BF_SubArrayPointing::clockRate() ";

%feature("docstring")  LDA::BF_SubArrayPointing::clockRateUnit "Attribute< string > LDA::BF_SubArrayPointing::clockRateUnit() ";

%feature("docstring")  LDA::BF_SubArrayPointing::nofSamples "Attribute< unsigned > LDA::BF_SubArrayPointing::nofSamples() ";

%feature("docstring")  LDA::BF_SubArrayPointing::samplingRate "Attribute< double > LDA::BF_SubArrayPointing::samplingRate() ";

%feature("docstring")  LDA::BF_SubArrayPointing::samplingRateUnit "Attribute< string > LDA::BF_SubArrayPointing::samplingRateUnit() ";

%feature("docstring")  LDA::BF_SubArrayPointing::channelsPerSubband "Attribute< unsigned > LDA::BF_SubArrayPointing::channelsPerSubband()
";

%feature("docstring")  LDA::BF_SubArrayPointing::subbandWidth "Attribute< double > LDA::BF_SubArrayPointing::subbandWidth() ";

%feature("docstring")  LDA::BF_SubArrayPointing::subbandWidthUnit "Attribute< string > LDA::BF_SubArrayPointing::subbandWidthUnit() ";

%feature("docstring")  LDA::BF_SubArrayPointing::channelWidth "Attribute< double > LDA::BF_SubArrayPointing::channelWidth() ";

%feature("docstring")  LDA::BF_SubArrayPointing::channelWidthUnit "Attribute< string > LDA::BF_SubArrayPointing::channelWidthUnit() ";

%feature("docstring")  LDA::BF_SubArrayPointing::nofBeams "Attribute<
unsigned > LDA::BF_SubArrayPointing::nofBeams() ";

%feature("docstring")  LDA::BF_SubArrayPointing::beam "BF_BeamGroup
LDA::BF_SubArrayPointing::beam(unsigned nr) ";


// File: classLDA_1_1CommonAttributesFile.xml
%feature("docstring") LDA::CommonAttributesFile "";

%feature("docstring")  LDA::CommonAttributesFile::CommonAttributesFile
"LDA::CommonAttributesFile::CommonAttributesFile(const std::string
&filename, enum fileMode mode=READ) ";

%feature("docstring")  LDA::CommonAttributesFile::groupType "Attribute< string > LDA::CommonAttributesFile::groupType() ";

%feature("docstring")  LDA::CommonAttributesFile::fileName "Attribute< string > LDA::CommonAttributesFile::fileName() ";

%feature("docstring")  LDA::CommonAttributesFile::fileDate "Attribute< string > LDA::CommonAttributesFile::fileDate() ";

%feature("docstring")  LDA::CommonAttributesFile::fileType "Attribute< string > LDA::CommonAttributesFile::fileType() ";

%feature("docstring")  LDA::CommonAttributesFile::telescope "Attribute< string > LDA::CommonAttributesFile::telescope() ";

%feature("docstring")  LDA::CommonAttributesFile::observer "Attribute< string > LDA::CommonAttributesFile::observer() ";

%feature("docstring")  LDA::CommonAttributesFile::projectID "Attribute< string > LDA::CommonAttributesFile::projectID() ";

%feature("docstring")  LDA::CommonAttributesFile::projectTitle "Attribute< string > LDA::CommonAttributesFile::projectTitle() ";

%feature("docstring")  LDA::CommonAttributesFile::projectPI "Attribute< string > LDA::CommonAttributesFile::projectPI() ";

%feature("docstring")  LDA::CommonAttributesFile::projectCOI "Attribute< string > LDA::CommonAttributesFile::projectCOI() ";

%feature("docstring")  LDA::CommonAttributesFile::projectContact "Attribute< string > LDA::CommonAttributesFile::projectContact() ";

%feature("docstring")  LDA::CommonAttributesFile::observationID "Attribute< string > LDA::CommonAttributesFile::observationID() ";

%feature("docstring")  LDA::CommonAttributesFile::observationStartUTC
"Attribute< string > LDA::CommonAttributesFile::observationStartUTC()
";

%feature("docstring")  LDA::CommonAttributesFile::observationStartMJD
"Attribute< double > LDA::CommonAttributesFile::observationStartMJD()
";

%feature("docstring")  LDA::CommonAttributesFile::observationStartTAI
"Attribute< string > LDA::CommonAttributesFile::observationStartTAI()
";

%feature("docstring")  LDA::CommonAttributesFile::observationEndUTC "Attribute< string > LDA::CommonAttributesFile::observationEndUTC() ";

%feature("docstring")  LDA::CommonAttributesFile::observationEndMJD "Attribute< double > LDA::CommonAttributesFile::observationEndMJD() ";

%feature("docstring")  LDA::CommonAttributesFile::observationEndTAI "Attribute< string > LDA::CommonAttributesFile::observationEndTAI() ";

%feature("docstring")
LDA::CommonAttributesFile::observationNofStations "Attribute<
unsigned > LDA::CommonAttributesFile::observationNofStations() ";

%feature("docstring")
LDA::CommonAttributesFile::observationStationsList "AttributeV<
string > LDA::CommonAttributesFile::observationStationsList() ";

%feature("docstring")
LDA::CommonAttributesFile::observationNofBitsPerSample "Attribute<
unsigned > LDA::CommonAttributesFile::observationNofBitsPerSample() ";

%feature("docstring")  LDA::CommonAttributesFile::clockFrequency "Attribute< double > LDA::CommonAttributesFile::clockFrequency() ";

%feature("docstring")  LDA::CommonAttributesFile::clockFrequencyUnit "Attribute< string > LDA::CommonAttributesFile::clockFrequencyUnit() ";

%feature("docstring")  LDA::CommonAttributesFile::antennaSet "Attribute< string > LDA::CommonAttributesFile::antennaSet() ";

%feature("docstring")  LDA::CommonAttributesFile::filterSelection "Attribute< string > LDA::CommonAttributesFile::filterSelection() ";

%feature("docstring")  LDA::CommonAttributesFile::target "Attribute<
string > LDA::CommonAttributesFile::target() ";

%feature("docstring")  LDA::CommonAttributesFile::systemVersion "Attribute< string > LDA::CommonAttributesFile::systemVersion() ";

%feature("docstring")  LDA::CommonAttributesFile::pipelineName "Attribute< string > LDA::CommonAttributesFile::pipelineName() ";

%feature("docstring")  LDA::CommonAttributesFile::pipelineVersion "Attribute< string > LDA::CommonAttributesFile::pipelineVersion() ";

%feature("docstring")  LDA::CommonAttributesFile::ICDNumber "Attribute< string > LDA::CommonAttributesFile::ICDNumber() ";

%feature("docstring")  LDA::CommonAttributesFile::ICDVersion "Attribute< string > LDA::CommonAttributesFile::ICDVersion() ";

%feature("docstring")  LDA::CommonAttributesFile::notes "Attribute<
string > LDA::CommonAttributesFile::notes() ";


// File: classLDA_1_1Coordinate.xml
%feature("docstring") LDA::Coordinate "";

%feature("docstring")  LDA::Coordinate::coordinateType "Attribute<
string > LDA::Coordinate::coordinateType() ";

%feature("docstring")  LDA::Coordinate::storageType "AttributeV<
string > LDA::Coordinate::storageType() ";

%feature("docstring")  LDA::Coordinate::nofAxes "Attribute< unsigned
> LDA::Coordinate::nofAxes() ";

%feature("docstring")  LDA::Coordinate::axisNames "AttributeV< string
> LDA::Coordinate::axisNames() ";

%feature("docstring")  LDA::Coordinate::axisUnits "AttributeV< string
> LDA::Coordinate::axisUnits() ";

%feature("docstring")  LDA::Coordinate::referenceValue "AttributeV<
double > LDA::Coordinate::referenceValue() ";

%feature("docstring")  LDA::Coordinate::referencePixel "AttributeV<
double > LDA::Coordinate::referencePixel() ";

%feature("docstring")  LDA::Coordinate::increment "AttributeV< double
> LDA::Coordinate::increment() ";

%feature("docstring")  LDA::Coordinate::pc "AttributeV< double >
LDA::Coordinate::pc() ";

%feature("docstring")  LDA::Coordinate::axisValuesPixel "AttributeV<
double > LDA::Coordinate::axisValuesPixel() ";

%feature("docstring")  LDA::Coordinate::axisValuesWorld "AttributeV<
double > LDA::Coordinate::axisValuesWorld() ";


// File: classLDA_1_1CoordinatesGroup.xml
%feature("docstring") LDA::CoordinatesGroup "";

%feature("docstring")  LDA::CoordinatesGroup::refLocationValue "AttributeV< double > LDA::CoordinatesGroup::refLocationValue() ";

%feature("docstring")  LDA::CoordinatesGroup::refLocationUnit "AttributeV< string > LDA::CoordinatesGroup::refLocationUnit() ";

%feature("docstring")  LDA::CoordinatesGroup::refLocationFrame "Attribute< string > LDA::CoordinatesGroup::refLocationFrame() ";

%feature("docstring")  LDA::CoordinatesGroup::refTimeValue "Attribute< double > LDA::CoordinatesGroup::refTimeValue() ";

%feature("docstring")  LDA::CoordinatesGroup::refTimeUnit "Attribute<
string > LDA::CoordinatesGroup::refTimeUnit() ";

%feature("docstring")  LDA::CoordinatesGroup::refTimeFrame "Attribute< string > LDA::CoordinatesGroup::refTimeFrame() ";

%feature("docstring")  LDA::CoordinatesGroup::nofCoordinates "Attribute< unsigned > LDA::CoordinatesGroup::nofCoordinates() ";

%feature("docstring")  LDA::CoordinatesGroup::nofAxes "Attribute<
unsigned > LDA::CoordinatesGroup::nofAxes() ";

%feature("docstring")  LDA::CoordinatesGroup::coordinateTypes "AttributeV< string > LDA::CoordinatesGroup::coordinateTypes() ";

%feature("docstring")  LDA::CoordinatesGroup::coordinate "Coordinate
LDA::CoordinatesGroup::coordinate(unsigned nr) ";


// File: classLDA_1_1Element.xml
%feature("docstring") LDA::Element "";

%feature("docstring")  LDA::Element::name "std::string
LDA::Element::name() const ";

%feature("docstring")  LDA::Element::exists "bool
LDA::Element::exists() const

Return whether this attribute exists in the HDF5 file. ";

%feature("docstring")  LDA::Element::remove "void
LDA::Element::remove() const ";


// File: classLDA_1_1HDF5DatasetBase.xml
%feature("docstring") LDA::HDF5DatasetBase "";

%feature("docstring")  LDA::HDF5DatasetBase::create "void
LDA::HDF5DatasetBase< T >::create(const std::vector< ssize_t > &dims,
const std::vector< ssize_t > &maxdims, const std::string
&filename=\"\", enum Endianness endianness=NATIVE) ";

%feature("docstring")  LDA::HDF5DatasetBase::create "virtual void
LDA::HDF5DatasetBase< T >::create() const ";

%feature("docstring")  LDA::HDF5DatasetBase::ndims "size_t
LDA::HDF5DatasetBase< T >::ndims() ";

%feature("docstring")  LDA::HDF5DatasetBase::dims "std::vector<
ssize_t > LDA::HDF5DatasetBase< T >::dims() ";

%feature("docstring")  LDA::HDF5DatasetBase::maxdims "std::vector<
ssize_t > LDA::HDF5DatasetBase< T >::maxdims() ";

%feature("docstring")  LDA::HDF5DatasetBase::externalFiles "std::vector< std::string > LDA::HDF5DatasetBase< T >::externalFiles()
";

%feature("docstring")  LDA::HDF5DatasetBase::getMatrix "void
LDA::HDF5DatasetBase< T >::getMatrix(const std::vector< size_t > &pos,
const std::vector< size_t > &size, T *buffer) ";

%feature("docstring")  LDA::HDF5DatasetBase::setMatrix "void
LDA::HDF5DatasetBase< T >::setMatrix(const std::vector< size_t > &pos,
const std::vector< size_t > &size, const T *buffer) ";

%feature("docstring")  LDA::HDF5DatasetBase::get2D "void
LDA::HDF5DatasetBase< T >::get2D(const std::vector< size_t > &pos, int
dim1, int dim2, T *outbuffer2) ";

%feature("docstring")  LDA::HDF5DatasetBase::set2D "void
LDA::HDF5DatasetBase< T >::set2D(const std::vector< size_t > &pos, int
dim1, int dim2, const T *inbuffer2) ";

%feature("docstring")  LDA::HDF5DatasetBase::get1D "void
LDA::HDF5DatasetBase< T >::get1D(const std::vector< size_t > &pos, int
dim1, T *outbuffer1) ";

%feature("docstring")  LDA::HDF5DatasetBase::set1D "void
LDA::HDF5DatasetBase< T >::set1D(const std::vector< size_t > &pos, int
dim1, const T *inbuffer1) ";

%feature("docstring")  LDA::HDF5DatasetBase::getScalar "T
LDA::HDF5DatasetBase< T >::getScalar(const std::vector< size_t > &pos)
";

%feature("docstring")  LDA::HDF5DatasetBase::setScalar "void
LDA::HDF5DatasetBase< T >::setScalar(const std::vector< size_t > &pos,
const T &value) ";


// File: classLDA_1_1HDF5Exception.xml
%feature("docstring") LDA::HDF5Exception "";

%feature("docstring")  LDA::HDF5Exception::HDF5Exception "LDA::HDF5Exception::HDF5Exception(const std::string &msg) ";


// File: classLDA_1_1HDF5FileBase.xml
%feature("docstring") LDA::HDF5FileBase "";

%feature("docstring")  LDA::HDF5FileBase::flush "void
LDA::HDF5FileBase::flush() const ";


// File: classLDA_1_1HDF5GroupBase.xml
%feature("docstring") LDA::HDF5GroupBase "";

%feature("docstring")  LDA::HDF5GroupBase::HDF5GroupBase "LDA::HDF5GroupBase::HDF5GroupBase(const HDF5GroupBase &other) ";

%feature("docstring")  LDA::HDF5GroupBase::~HDF5GroupBase "LDA::HDF5GroupBase::~HDF5GroupBase() ";

%feature("docstring")  LDA::HDF5GroupBase::create "void
LDA::HDF5GroupBase::create() ";

%feature("docstring")  LDA::HDF5GroupBase::exists "bool
LDA::HDF5GroupBase::exists() const ";

%feature("docstring")  LDA::HDF5GroupBase::remove "void
LDA::HDF5GroupBase::remove() const ";

%feature("docstring")  LDA::HDF5GroupBase::set "void
LDA::HDF5GroupBase::set(const HDF5GroupBase &other, bool deepcopy) ";

%feature("docstring")  LDA::HDF5GroupBase::groupType "Attribute<
string > LDA::HDF5GroupBase::groupType() ";


// File: classLDA_1_1HDF5Node.xml
%feature("docstring") LDA::HDF5Node "";

%feature("docstring")  LDA::HDF5Node::HDF5Node "LDA::HDF5Node::HDF5Node(const std::string &name) ";

%feature("docstring")  LDA::HDF5Node::name "std::string
LDA::HDF5Node::name() const ";


// File: classLDA_1_1hid__gc.xml
%feature("docstring") LDA::hid_gc "";

%feature("docstring")  LDA::hid_gc::hid_gc "LDA::hid_gc::hid_gc(hid_t
hid, hid_t(*closefunc)(hid_t), const std::string &errordesc=\"\") ";

%feature("docstring")  LDA::hid_gc::hid_gc "LDA::hid_gc::hid_gc(const
hid_gc &other) ";

%feature("docstring")  LDA::hid_gc::~hid_gc "LDA::hid_gc::~hid_gc()
";


// File: classLDA_1_1hid__gc__noref.xml
%feature("docstring") LDA::hid_gc_noref "";

%feature("docstring")  LDA::hid_gc_noref::hid_gc_noref "LDA::hid_gc_noref::hid_gc_noref(hid_t hid, hid_t(*closefunc)(hid_t),
const std::string &errordesc=\"\") ";

%feature("docstring")  LDA::hid_gc_noref::~hid_gc_noref "LDA::hid_gc_noref::~hid_gc_noref() ";


// File: classLDA_1_1SpectralCoordinate.xml
%feature("docstring") LDA::SpectralCoordinate "";


// File: classLDA_1_1SysLog.xml
%feature("docstring") LDA::SysLog "";


// File: classLDA_1_1TimeCoordinate.xml
%feature("docstring") LDA::TimeCoordinate "";


// File: namespaceLDA.xml
%feature("docstring")  LDA::h5scalar "hid_t LDA::h5scalar() ";

%feature("docstring")  LDA::h5array "hid_t LDA::h5array(hsize_t
count) ";

%feature("docstring")  LDA::h5stringType "hid_t LDA::h5stringType()
";

%feature("docstring")  LDA::h5complexType< T > " hid_gc
LDA::h5complexType< T >() ";

%feature("docstring")  LDA::h5nativeType "hid_t LDA::h5nativeType()
";

%feature("docstring")  LDA::h5nativeType< float > " hid_t
LDA::h5nativeType< float >() ";

%feature("docstring")  LDA::h5nativeType< double > " hid_t
LDA::h5nativeType< double >() ";

%feature("docstring")  LDA::h5nativeType< unsigned > " hid_t
LDA::h5nativeType< unsigned >() ";

%feature("docstring")  LDA::h5nativeType< int > " hid_t
LDA::h5nativeType< int >() ";

%feature("docstring")  LDA::h5nativeType< bool > " hid_t
LDA::h5nativeType< bool >() ";

%feature("docstring")  LDA::h5writeType "hid_t LDA::h5writeType() ";

%feature("docstring")  LDA::h5writeType< float > " hid_t
LDA::h5writeType< float >() ";

%feature("docstring")  LDA::h5writeType< double > " hid_t
LDA::h5writeType< double >() ";

%feature("docstring")  LDA::h5writeType< unsigned > " hid_t
LDA::h5writeType< unsigned >() ";

%feature("docstring")  LDA::h5writeType< int > " hid_t
LDA::h5writeType< int >() ";

%feature("docstring")  LDA::h5writeType< bool > " hid_t
LDA::h5writeType< bool >() ";

%feature("docstring")  LDA::h5dataType "hid_t LDA::h5dataType(bool
bigEndian) ";

%feature("docstring")  LDA::h5dataType< float > " hid_t
LDA::h5dataType< float >(bool bigEndian) ";


// File: namespacestd.xml


// File: BeamFormedFile_8cc.xml


// File: BeamFormedFile_8h.xml


// File: CommonAttributesFile_8cc.xml


// File: CommonAttributesFile_8h.xml


// File: h5attribute_8h.xml


// File: h5complex_8h.xml


// File: h5exception_8h.xml


// File: h5typemap_8h.xml


// File: hid__gc_8h.xml


// File: HDF5DatasetBase_8h.xml


// File: HDF5FileBase_8cc.xml


// File: HDF5FileBase_8h.xml


// File: HDF5GroupBase_8cc.xml


// File: HDF5GroupBase_8h.xml


// File: HDF5Node_8h.xml


// File: test_8cpp.xml
%feature("docstring")  main "int main() ";


// File: dir_e977623c22313efae7be34036cf05f12.xml

