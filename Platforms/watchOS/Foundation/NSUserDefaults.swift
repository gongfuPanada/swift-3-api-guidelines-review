
let globalDomain: String
let argumentDomain: String
let registrationDomain: String
class UserDefaults : Object {
  class func standard() -> UserDefaults
  class func resetStandardUserDefaults()
  convenience init()
  @available(watchOS 2.0, *)
  init?(suiteName suitename: String?)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  convenience init?(user username: String)
  func objectFor(key defaultName: String) -> AnyObject?
  func setObject(value: AnyObject?, forKey defaultName: String)
  func removeObjectFor(key defaultName: String)
  func stringFor(key defaultName: String) -> String?
  func arrayFor(key defaultName: String) -> [AnyObject]?
  func dictionaryFor(key defaultName: String) -> [String : AnyObject]?
  func dataFor(key defaultName: String) -> Data?
  func stringArrayFor(key defaultName: String) -> [String]?
  func integerFor(key defaultName: String) -> Int
  func floatFor(key defaultName: String) -> Float
  func doubleFor(key defaultName: String) -> Double
  func boolFor(key defaultName: String) -> Bool
  @available(watchOS 2.0, *)
  func urlFor(key defaultName: String) -> URL?
  func setInteger(value: Int, forKey defaultName: String)
  func setFloat(value: Float, forKey defaultName: String)
  func setDouble(value: Double, forKey defaultName: String)
  func setBool(value: Bool, forKey defaultName: String)
  @available(watchOS 2.0, *)
  func setURL(url: URL?, forKey defaultName: String)
  func register(registrationDictionary: [String : AnyObject])
  func addSuiteNamed(suiteName: String)
  func removeSuiteNamed(suiteName: String)
  func dictionaryRepresentation() -> [String : AnyObject]
  var volatileDomainNames: [String] { get }
  func volatileDomainFor(name domainName: String) -> [String : AnyObject]
  func setVolatileDomain(domain: [String : AnyObject], forName domainName: String)
  func removeVolatileDomainFor(name domainName: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func persistentDomainNames() -> [AnyObject]
  func persistentDomainFor(name domainName: String) -> [String : AnyObject]?
  func setPersistentDomain(domain: [String : AnyObject], forName domainName: String)
  func removePersistentDomainFor(name domainName: String)
  func synchronize() -> Bool
  func objectIsForcedFor(key key: String) -> Bool
  func objectIsForced(forKey key: String, inDomain domain: String) -> Bool
}
let userDefaultsDidChangeNotification: String