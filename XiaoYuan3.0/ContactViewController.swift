//
//  ContactViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var Userbtn: UIBarButtonItem!
    @IBOutlet weak var people: UIView!
    @IBOutlet weak var messages: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        messages.isHidden = false
        people.isHidden = true
        
        // Do any additional setup after loading the view.
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       //从设置界面返回时显示tabbar
        self.tabBarController?.tabBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Usercenter(_ sender: Any) {
        let UserVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
        self.navigationController?.pushViewController(UserVC, animated: true)
        //在显示UserVC 时隐藏tabbar
        self.tabBarController?.tabBar.isHidden = true 
    }


    @IBAction func segment(_ sender: Any) {
        //实现信息界面与联系人界面的切换
        if segmentControl.selectedSegmentIndex == 0 {
            messages.isHidden = false
            people.isHidden = true
        }else {
           messages.isHidden = true
           people.isHidden = false
        }
    }

}
