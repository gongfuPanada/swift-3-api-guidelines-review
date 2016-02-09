
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case renewed
  case rejected
  case failed
}
typealias ACAccountStoreSaveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, Error!) -> Void
@available(iOS 5.0, *)
class ACAccountStore : Object {
  var accounts: [AnyObject]! { get }
  func accountWith(identifier identifier: String!) -> ACAccount!
  func accountTypeWith(accountTypeIdentifier typeIdentifier: String!) -> ACAccountType!
  func accountsWith(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccounts(accountType: ACAccountType!, options: [Object : AnyObject]! = [:], completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsFor(account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
@available(iOS 5.0, *)
let ACAccountStoreDidChangeNotification: String