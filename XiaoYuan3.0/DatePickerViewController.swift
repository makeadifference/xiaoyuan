//
//  DatePickerViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/30.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  

    @IBAction func selecte(_ sender: Any) {
        self.dismiss(animated: true , completion: nil)  // 使用闭包反向传值
    }
}
