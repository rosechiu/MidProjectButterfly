//
//  ButterflyTableViewCell.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
