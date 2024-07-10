//
//  AppDelegate.swift
//  ArchitectureMVVM
//
//  Created by Janam Soni on 08/07/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let naviagtionController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = naviagtionController
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }


}

