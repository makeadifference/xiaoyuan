//
//  UserViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class UserViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{

    let settingitem : [[String : String]] = [
        [ "key" : "用户头像"],
        [ "key" : "昵称"],
        [ "key" : "个性签名"],
        ["key" : "我的动态"],
        ["key" : "设置生日"],
        ["key" : "家乡省市"],
        ["key" : "选择学校"]
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        //重新实现返回按钮
        let backButton = UIBarButtonItem(title: "く返回", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        self.navigationItem.leftBarButtonItem = backButton
        
        //设置按钮      
        let settingButton = UIBarButtonItem(title: "设置", style: UIBarButtonItemStyle.plain, target: self, action: #selector(setting))
        self.navigationItem.rightBarButtonItem = settingButton
        
        //设置导航栏标题
        self.navigationItem.title = "用户信息"
        
        
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

    func setting(){
        
    }
    
    func goBack(){
       self.navigationController?.popViewController(animated: true )
    }
    
    
    
    //  TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.settingitem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dictionary = self.settingitem[indexPath.row]
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "touxiang")
        cell1?.textLabel?.text = dictionary["key"]
    
        return cell1!
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
