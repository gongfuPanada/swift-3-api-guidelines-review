
@available(tvOS 7.0, *)
enum UIInputViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case keyboard
}
@available(tvOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  @available(tvOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputViewStyle = .`default`)
  init?(coder aDecoder: Coder)
  convenience init(frame: CGRect)
  convenience init()
}