//
//  SetNameViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/30.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class SetNameViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!  // 需要把内容传回前一个VC

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "修改昵称"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)  // 不知道为什么无效
    
    }

    @IBAction func save(_ sender: Any) {
        self.dismiss(animated: true, completion: nil) // 使用completion闭包反向传值
    }
   

}
