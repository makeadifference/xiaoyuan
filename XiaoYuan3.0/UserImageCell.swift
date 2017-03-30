//
//  UserImageCell.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/3/2.
//  Copyright © 2017年 drf. All rights reserved.
//  设置界面用户头像单元格

import UIKit

class UserImageCell: UITableViewCell {
    @IBOutlet weak var UserImageView: UIImageView!
    // 设置宽度,以适应不同的设备
    // 根据内容，自动调整高度
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUserImage(image : UIImage){
        self.UserImageView.image  = image
        
    }
    
}
