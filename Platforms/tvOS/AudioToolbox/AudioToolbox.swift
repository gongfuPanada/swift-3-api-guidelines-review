
var AUDIO_TOOLBOX_VERSION: Int32 { get }
@available(tvOS 2.0, *)
func CAShow(inObject: UnsafeMutablePointer<Void>)
@available(tvOS 2.0, *)
func CAShowFile(inObject: UnsafeMutablePointer<Void>, _ inFile: UnsafeMutablePointer<FILE>)
@available(tvOS 7.0, *)
func CopyNameFromSoundBank(inURL: CFURL, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(tvOS 7.0, *)
func CopyInstrumentInfoFromSoundBank(inURL: CFURL, _ outInstrumentInfo: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
var kInstrumentInfoKey_Name: String { get }
var kInstrumentInfoKey_MSB: String { get }
var kInstrumentInfoKey_LSB: String { get }
var kInstrumentInfoKey_Program: String { get }