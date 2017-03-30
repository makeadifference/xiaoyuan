//
//  LoginViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/5.
//  Copyright © 2017年 drf. All rights reserved.
//  登录界面控制器——————所有使用的根容器

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var visitorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    // 展示tabbar 控制器！！！
    @IBAction func VisitorLogin(_ sender: Any) {
        let TabBarVC = TabBarViewController()
        self.present(TabBarVC, animated: true, completion: nil)
    }
    
    // 登录功能，有待实现
  /*  @IBAction func Login(_ sender: Any) {
        let TabBarVC = TabBarViewController()
        self.present(TabBarVC, animated: true, completion: nil)
    }
 */
    



}
