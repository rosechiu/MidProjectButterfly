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
    
    func configure(location: String){
        let geoCoder = CLGeocoder()
        print(location)
        geoCoder.geocodeAddressString(location, completionHandler: {placemarks,error in
            if let error = error{
                print("Geocoder error: \(error.localizedDescription)")
                return
            }
            if let placemarks = placemarks{
                let placemark = placemarks[0]
                let annotation = MKPointAnnotation()
                if let location = placemark.location{
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                    let regin = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                    self.mapView.setRegion(regin, animated: false)
                }
            }
        })
    }

}
