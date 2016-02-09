
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
class CFURLEnumerator {
}
@available(watchOS 2.0, *)
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var defaultBehavior: CFURLEnumeratorOptions { get }
  static var descendRecursively: CFURLEnumeratorOptions { get }
  static var skipInvisibles: CFURLEnumeratorOptions { get }
  static var generateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var skipPackageContents: CFURLEnumeratorOptions { get }
  static var includeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var includeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
}
@available(watchOS 2.0, *)
func CFURLEnumeratorCreateForDirectoryURL(alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
@available(watchOS 2.0, *)
func CFURLEnumeratorCreateForMountedVolumes(alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case success
  case end
  case error
  case directoryPostOrderSuccess
}
@available(watchOS 2.0, *)
func CFURLEnumeratorGetNextURL(enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFURLEnumeratorResult
@available(watchOS 2.0, *)
func CFURLEnumeratorSkipDescendents(enumerator: CFURLEnumerator!)
@available(watchOS 2.0, *)
func CFURLEnumeratorGetDescendentLevel(enumerator: CFURLEnumerator!) -> CFIndex
@available(watchOS, introduced=2.0, deprecated=2.0)
func CFURLEnumeratorGetSourceDidChange(enumerator: CFURLEnumerator!) -> Bool