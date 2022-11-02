
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        AppCenter.logLevel = .verbose
        
        AppCenter.start(withAppSecret: "43e9a848-1071-4d12-8fe1-462996efe9a8", services: [
            Analytics.self,
            Crashes.self,
        ])
        
        return true
    }
}
