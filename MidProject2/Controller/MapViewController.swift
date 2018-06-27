//
//  MapViewController.swift
//  MidProject2
//
//  Created by csie on 2018/6/27.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    var butterfly = Butterfly()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let geoCoder = CLGeocoder()
        print(butterfly.location)
        geoCoder.geocodeAddressString(butterfly.location, completionHandler: {placemarks,error in
            if let error = error{
                print("Geocoder error: \(error.localizedDescription)")
                return
            }
            if let placemarks = placemarks{
                let placemark = placemarks[0]
                
                let annotation = MKPointAnnotation()
                annotation.title = self.butterfly.name
                if let location = placemark.location{
                    annotation.coordinate = location.coordinate
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation,animated: true)
                }
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
