
enum UIBarButtonItemStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case plain
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
  case bordered
  case done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case done
  case cancel
  case edit
  case save
  case add
  case flexibleSpace
  case fixedSpace
  case compose
  case reply
  case action
  case organize
  case bookmarks
  case search
  case refresh
  case stop
  case camera
  case trash
  case play
  case pause
  case rewind
  case fastForward
  @available(tvOS 3.0, *)
  case undo
  @available(tvOS 3.0, *)
  case redo
  @available(tvOS 4.0, *)
  case pageCurl
}
@available(tvOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  convenience init(image image: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  @available(tvOS 5.0, *)
  convenience init(image image: UIImage?, landscapeImagePhone landscapeImagePhone: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(title title: String?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target target: AnyObject?, action action: Selector)
  convenience init(customView customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  @available(tvOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImage(for state: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 6.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, style style: UIBarButtonItemStyle, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 6.0, *)
  func backgroundImage(for state: UIControlState, style style: UIBarButtonItemStyle, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  var tintColor: UIColor?
  @available(tvOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(tvOS 5.0, *)
  func setTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func titlePositionAdjustment(for barMetrics: UIBarMetrics) -> UIOffset
}
