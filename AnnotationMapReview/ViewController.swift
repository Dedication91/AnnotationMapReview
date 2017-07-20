//
//  ViewController.swift
//  AnnotationMapReview
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(32.7157, 117.1611)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "My Spot"
        annotation.subtitle = "Come here"
        map.addAnnotation(annotation)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

