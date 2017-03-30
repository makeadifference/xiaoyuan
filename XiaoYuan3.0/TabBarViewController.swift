//
//  TabBarViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 交友ViewController
        let FriendsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        //信息ViewController //实例化NavigationViewController 同时会实例化ContactViewController
        let ContactVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"NavigationViewController") as!   NavigationViewController
        //动态ViewController
        let MomentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MomentViewController") as! MomentViewController
        
        
       
        self.viewControllers = [ ContactVC , MomentVC , FriendsVC]
         //配置每个tab bar 的相关属性
        FriendsVC.tabBarItem.title = "交友"
        MomentVC.tabBarItem.title = "动态"
        ContactVC.tabBarItem.title = "信息"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
