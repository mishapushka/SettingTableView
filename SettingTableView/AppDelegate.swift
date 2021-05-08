//
//  AppDelegate.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window?.rootViewController = MainTabBarController.createTabBarController()
        window?.makeKeyAndVisible()

        return true
    }
}
