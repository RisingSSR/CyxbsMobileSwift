//
//  AppDelegate.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    lazy var window: UIWindow? = {
        let window = UIWindow()
        window.rootViewController = RyTabBarController()
        return window
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.makeKeyAndVisible()
        
        return true
    }

}
