//
//  XiaoxiCell.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/28.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class XiaoxiCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var sentTime: UILabel!
    @IBOutlet weak var words: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData(){
        
    }
    
}
