
class WebResource : Object, Coding, Copying {
  init!(data: Data!, url URL: URL!, mimeType MIMEType: String!, textEncodingName: String!, frameName: String!)
  @NSCopying var data: Data! { get }
  var url: URL! { get }
  var mimeType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}