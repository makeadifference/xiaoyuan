//
//  UserViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        //重新实现返回按钮
        let backButton = UIBarButtonItem(title: "く返回", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        self.navigationItem.leftBarButtonItem = backButton
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
    self.navigationController!.popViewController(animated: true)
        print("haha")
        
    }

    
    func goBack(){
       self.navigationController?.popViewController(animated: true )
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
