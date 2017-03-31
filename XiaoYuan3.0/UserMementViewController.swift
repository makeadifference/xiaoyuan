//
//  UserMementViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/30.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class UserMementViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    let dictioinary : [[String : String]] = [
        ["item" : "新消息提醒"],
        ["item" : "通讯录"],
        ["item" : "通用" ],
        ["item": "账号与安全"],
        ["item": "关于校缘"],
        ["item": "退出"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // 根据用户名称设置标题栏
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // tableView DateSource 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dictioinary.count
    }
    
    // tableView Delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let settingitem = self.dictioinary[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "MementCell")
    cell?.textLabel?.text = settingitem["item"]
        return cell! 
    }
    
}
