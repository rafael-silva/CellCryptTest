import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let initialViewController = ModuloFactoryImp().factorialOutput()
        let navigation = UINavigationController.init(rootViewController: initialViewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    
    @available(iOS 13.0, *)
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
}

