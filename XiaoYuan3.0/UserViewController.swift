//
//  UserViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/27.
//  Copyright © 2017年 drf. All rights reserved.
//  用户中心

import UIKit

class UserViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate{

    let settingitem : [[String : String]] = [
        [ "key" : "昵称"],
        [ "key" : "个性签名"],
        ["key" : "我的动态"],
        ["key" : "设置生日"],
        ["key" : "家乡省市"],
        ["key" : "选择学校"]
        
    ]
    
    var image : UIImage = UIImage(named: "lock")!
    

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
        
        //返回用户选择的相片
        
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
       /* let settingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingVC") as! SettingViewController
       settingVC.navigationItem.title = "系统设置"
       // self.present(settingVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(settingVC, animated: true)
        */
     /*  print("click")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingVC") as! SettingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingVC") as! SettingsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        */
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func goBack(){
        self.navigationController?.popViewController(animated: true)
        
    }
    
    //  TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 6
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //设置自定义单元格高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if  indexPath.section == 0 {
            return 60
        } else {
            return 40
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dictionary = self.settingitem[indexPath.row]
        //向tableview 注册UserImageCell , 实现“用户头像”单元格自定义
        let nib = UINib(nibName: "UserImageCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "UserImageCell")
        
        //根据分区设置不同类型的单元格
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserImageCell") as! UserImageCell
            cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
            //可以使用setUserImage(imageName : String) 设置用户头像
            // let image  = "lock"
             cell.setUserImage(image: self.image)
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = dictionary["key"]
            cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
            return cell!
        }
   }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 纯代码的话需要跳转7个界面 （包括 alert）
        if indexPath.section == 0 {
            print("个人头像")
            let picker = UIImagePickerController()
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(picker, animated: true, completion: nil)
        } else if indexPath.row == 0 {
            print("昵称")
            let SetNameVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SetNameVC") as! SetNameViewController
       //     present(SetNameVC , animated: true , completion: nil)
            self.navigationController?.pushViewController(SetNameVC, animated: true)
        } else if indexPath.row == 1 {
            print("个性签名")
        } else if indexPath.row == 2 {
            print("我的动态")
            let UserMementVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserMementVC") as! UserMementViewController
            // 设置标题栏
            //UserMementVC.navigationItem.title = "我的动态"
            self.navigationController?.pushViewController(UserMementVC, animated: true)
        } else if indexPath.row == 3 {
            print("设置生日")
            // 提供一个日期选择器
            let Datepicker = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DatePickerVC") as! DatePickerViewController
            present(Datepicker, animated: true, completion: nil)
            
        } else if indexPath.row == 4 {
            print("家乡省市")
            let LocationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LocationVC") as! LocationViewController
            LocationVC.navigationItem.title = "选择家乡"
            self.navigationController?.pushViewController(LocationVC, animated: true)
            
        } else if indexPath.row == 5 {
            print("选择学校")
            let SearchSchoolVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchSchoolVC") as! ChooseSchoolViewController
            SearchSchoolVC.navigationItem.title = "选择学校"
            self.navigationController?.pushViewController(SearchSchoolVC, animated: true)
            
        }
        
    }
    
    
    //UIImagePickerController
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true , completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage : UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.image = selectedImage
    }
    
    

}





