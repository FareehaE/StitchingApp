//
//  AppDelegate.swift
//  StitchPro
//
//  Created by Furi on 29/09/2022.
//

import UIKit
import KYDrawerController

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//
//        let mainViewController   = MainViewController()
//                let drawerViewController = DrawerViewController()
//                let drawerController     = KYDrawerController()
//                drawerController.mainViewController = UINavigationController(
//                    rootViewController: mainViewController
//                )
//                drawerController.drawerViewController = drawerViewController
//
//        /* Customize
//              drawerController.drawerDirection = .Right
//              drawerController.drawerWidth     = 200
//              */
//
//              window = UIWindow(frame: UIScreen.mainScreen().bounds)
//              window?.rootViewController = drawerController
//              window?.makeKeyAndVisible()
        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

