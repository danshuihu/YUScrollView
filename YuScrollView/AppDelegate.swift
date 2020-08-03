//
//  AppDelegate.swift
//  YuScrollView
//
//  Created by yangyu on 2020/7/31.
//  Copyright © 2020 yangyu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window.backgroundColor = UIColor.white
        self.window.rootViewController = ViewController()
        self.window.makeKeyAndVisible()
        
        return true
    }




}

