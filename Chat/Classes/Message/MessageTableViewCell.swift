//
//  MessageTableViewCell.swift
//  Chat
//
//  Created by LiChendi on 16/3/23.
//  Copyright © 2016年 lcd. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
   
    @IBOutlet weak var IconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
