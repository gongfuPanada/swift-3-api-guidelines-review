
@available(iOS 8.2, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
}
@available(iOS 8.2, *)
enum WKMenuItemIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accept
  case add
  case block
  case decline
  case info
  case maybe
  case more
  case mute
  case pause
  case play
  case `repeat`
  case resume
  case share
  case shuffle
  case speaker
  case trash
}
enum WKTextInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case allowEmoji
  case allowAnimatedEmoji
}
@available(iOS 8.2, *)
class WKInterfaceController : Object {
  init()
  func awake(context context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
  func handleAction(identifier identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject])
  func handleAction(identifier identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [Object : AnyObject]?)
  func setTitle(title: String?)
  func push(name name: String, context: AnyObject?)
  func pop()
  func popToRootController()
  class func reloadRootControllers(names names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func present(name name: String, context: AnyObject?)
  func present(names names: [String], contexts: [AnyObject]?)
  func dismiss()
  func presentTextInputController(suggestions suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsFor(language suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  func contextForSegueWith(identifier segueIdentifier: String) -> AnyObject?
  func contextsForSegueWith(identifier segueIdentifier: String) -> [AnyObject]?
  func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func addMenuItem(image: UIImage, title: String, action: Selector)
  func addMenuItem(imageNamed imageName: String, title: String, action: Selector)
  func addMenuItem(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [Object : AnyObject]? = [:], webpageURL: URL?)
  func invalidateUserActivity()
  @available(iOS 8.2, *)
  class func openParentApplication(userInfo: [Object : AnyObject], reply: (([Object : AnyObject], Error?) -> Void)? = nil) -> Bool
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(namesAndContexts: [(name: String, context: AnyObject)])
}
@available(iOS 8.2, *)
class WKUserNotificationInterfaceController : WKInterfaceController {
  init()
  func didReceiveRemoteNotification(remoteNotification: [Object : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
}