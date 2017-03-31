//
//  MomentCell.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/28.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class MomentCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var sex: UIImageView!
    @IBOutlet weak var userSchool: UILabel!
    @IBOutlet weak var postTime: UILabel!
    @IBOutlet weak var contentImage: UIImageView!   // 问题：如何使单元格的高度适应图片的高度？（单元格的高度存在最大值和最小值）
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData(data : MomentModal){
        // 调用该方法向单元格填充数据
        self.userImage.image = UIImage(named: data.userName!)
        self.userName.text = data.userName!
        self.sex.image = UIImage(named: data.sex!)
       // self.postTime.text = data.postTime!      // 发布时间 date（timeintervalsince now ？）
       // 输出时间需要进行格式化，..分钟前, ...多少天前 ,,.. 月，日。。。 输出格式应为字符串。
        self.contentImage.image = UIImage(named: data.contentImage!)   // 需要实现一个用户从本地选择图片的接口
    }
    
    // 设置时间
    func setDate(date :Date) {
        
    }
    
}
