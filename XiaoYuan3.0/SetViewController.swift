//
//  SetViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/31.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class SetViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // tableView datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dictioinary.count
    }
    
    // tableView delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingItem = self.dictioinary[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = settingItem["item"]
        return cell!
    }
    
    
    


}
