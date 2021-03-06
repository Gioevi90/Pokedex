import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let coordinator = window.map({ PokeListCoordinator(presenter: $0,
                                                           network: Application.network) })
        coordinator?.start()
        
        return true
    }
}
