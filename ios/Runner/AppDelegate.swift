import GoogleMaps
import Firebase
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyC8rdhPJRluxpPf3VcAs9LtD3zi4mXwxg0")

    FirebaseApp.configure()
    
    // Request notification permission
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().requestAuthorization(
        options: [.alert, .badge, .sound],
        completionHandler: { granted, error in
          // Handle permission response
        })
    }

    application.registerForRemoteNotifications()
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
