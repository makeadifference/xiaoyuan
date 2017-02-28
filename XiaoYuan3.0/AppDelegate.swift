//
//  AppDelegate.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //所有视图的根容器
        let TabBar = TabBarViewController()
        
        
        //以下的视图以tabbar为根容器
        //交友ViewController
        let FriendsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        //信息ViewController //实例化NavigationViewController 同时会实例化ContactViewController
        let ContactVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"NavigationViewController") as!   NavigationViewController
        //动态ViewController
        let MomentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MomentViewController") as! MomentViewController
        
        TabBar.viewControllers = [ ContactVC , FriendsVC , MomentVC]
        self.window?.rootViewController = TabBar
 
        
       // 设置tabbar 标签
        ContactVC.tabBarItem.title = "信息"
        MomentVC.tabBarItem.title = "动态"
        FriendsVC.tabBarItem.title = "交友"
    
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

