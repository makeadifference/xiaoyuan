//
//  MomentModal.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/2.
//  Copyright © 2017年 drf. All rights reserved.
//  动态单元格的数据模型

import Foundation


struct  MomentModal  {
    var  time :Date? // 发表时创建对象？？
    var userImage : String?
    var userName : String?
    var sex : String?
    var contentImage : String?
    // 发表时间，有待解决
    /*
    let posttime :String = { (time1) -> String  in
     
        let time = Date()
        let dateFormater = DateFormatter()
        dateFormater.timeStyle = .short
        dateFormater.dateStyle = .none
        let posttime1 :String = dateFormater.string(from: time1)
        return posttime1
        
    }(time)
    
    */
    
    /*
    var posttime :String?   {
    // 使用闭包进行初始化
    let  posttime : String  = { (date :Date) -> String in
    // 创建时间格式化器
    let dateFormater = DateFormatter()
    dateFormater.dateStyle = .none
    dateFormater.timeStyle = .short
    let time1 :String = dateFormater.string(from: date)
    // 返回格式化后的时间
    return  time1
    }(time)
    
        return posttime
    } */
    
    // 结构体无法拥有计算属性？
    // 自定义初始化器
    init(userImage:String?, userName : String? , sex : String?, contentImage : String? )
    {
        self.time = Date()
        self.userName = userName
        self.userImage = userImage
        self.sex = sex
        self.contentImage = contentImage
    }
    
}
