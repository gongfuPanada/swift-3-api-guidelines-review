
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : Object {
  class func system() -> NSStatusBar
  func statusItemWith(length length: CGFloat) -> NSStatusItem
  func remove(item: NSStatusItem)
  var isVertical: Bool { get }
  var thickness: CGFloat { get }
  init()
}