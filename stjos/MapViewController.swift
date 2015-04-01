//
//  MapViewController.swift
//  stjos
//
//  Created by Samuel Doherty on 3/17/15.
//  Copyright (c) 2015 stjos. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
            
        

        let location = CLLocationCoordinate2D(latitude: 39.050195, longitude: -76.926082)
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "ST. Joseph Regional Catholic School"
        annotation.subtitle = "Beltsville, Marlyland"
        
        mapView.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MapViewController:MKMapViewDelegate {
}