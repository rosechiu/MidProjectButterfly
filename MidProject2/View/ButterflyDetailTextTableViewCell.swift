//
//  ButterflyDetailTextTableViewCell.swift
//  MidProject2
//
//  Created by csie on 2018/5/12.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyDetailTextTableViewCell: UITableViewCell {

    @IBOutlet var penImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.numberOfLines = 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
