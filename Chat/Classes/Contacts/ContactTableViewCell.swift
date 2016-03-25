//
//  ContactTableViewCell.swift
//  Chat
//
//  Created by LiChendi on 16/3/23.
//  Copyright © 2016年 lcd. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    @IBOutlet weak var IconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
