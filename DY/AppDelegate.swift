//
//  AppDelegate.swift
//  DY
//
//  Created by QSHP on 2020/9/1.
//  Copyright © 2020 潘林海. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabbar = LHTabbarController()
        
        self.window?.rootViewController = tabbar
        self.window?.makeKeyAndVisible()
        
        return true
    }


}

