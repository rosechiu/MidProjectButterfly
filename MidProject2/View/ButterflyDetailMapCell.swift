//
//  ButterflyDetailMapCell.swift
//  MidProject2
//
//  Created by csie on 2018/5/18.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit
import MapKit

class ButterflyDetailMapCell: UITableViewCell {

    @IBOutlet var mapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
