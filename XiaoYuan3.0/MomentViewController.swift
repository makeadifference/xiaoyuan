//
//  MomentViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class MomentViewController: UIViewController  ,UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var UserButton: UIBarButtonItem!

    // 单元格数据源
   // let modal  = MomentModal(userImage: "lock", userName: "hello", sex: "man", postTime: Date(), contentImage: "phone")
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置导航栏按钮
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark : TableViewdatasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    
    
    // Mark : TableViewDelegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //使用自定义的cell  // 解包  
        let nib = UINib(nibName: "MomentCell", bundle: nil)
        // 注册单元格
        tableView.register(nib, forCellReuseIdentifier: "MomentCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "MomentCell") as! MomentCell
        return cell
    }
    
    
    //  设置单元格的高度
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 调试单元格!!!!
        print(indexPath.row)
    }
    
    
    // Button Actions   // 尚未解决！！！！！ :因为根容器不是navigeationVC , 所以无法使用navigation 的属性
    @IBAction func User(_ sender: Any) {
      let UserVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
        // 实现导航栏返回按钮
        let backButton = UIBarButtonItem(title: "く返回", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        self.navigationItem.leftBarButtonItem = backButton
        
         // 如果该视图控制器的根容器是NavigationViewContrllor 才有效果
      //  self.navigationController?.pushViewController(UserVC, animated: true) // 尝试使用其他的展示方法
        //在显示UserVC 时隐藏tabbar
        let settingButton = UIBarButtonItem(title: "设置", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack) )
        self.navigationItem.rightBarButtonItem = settingButton
        
        //设置导航栏标题
        self.navigationItem.title = "用户"
        self.present(UserVC, animated: true, completion: nil)
        self.tabBarController?.tabBar.isHidden = true
        print("pressed")
    
    }
    
    
    func goBack(){
        self.dismiss(animated: true, completion: nil)
    }
    

}
