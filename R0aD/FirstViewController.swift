//
//  FirstViewController.swift
//  R0aD
//
//  Created by Samarth Sandeep on 9/13/14.
//  Copyright (c) 2014 0g. All rights reserved.
//

import UIKit
import MapKit
import CloudKit

class FirstViewController: UIViewController , MKMapViewDelegate {
    @IBOutlet var theMapView: MKMapView?
    @IBOutlet weak var showViewButton: UIToolbar!
   
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        showViewButton.hidden = true
        var latitude:CLLocationDegrees = 51.857673
        var longitude:CLLocationDegrees = 3.852768
        
        var latitudeHwy1:CLLocationDegrees = 39.307674
        var longitudeHwy1:CLLocationDegrees = 123.799459
        
        var latitudeCol:CLLocationDegrees = 44.326699
        var longitudeCol:CLLocationDegrees = 6.807473
        
        var latDelta:CLLocationDegrees = 0.1
        var longDelta:CLLocationDegrees = 0.1
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var passLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude,longitude)
        var Hwy1Location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitudeHwy1,longitudeHwy1)
        var ColpassLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitudeCol,longitudeCol)
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(passLocation, theSpan)
      
      
        
        self.theMapView!.setRegion(theRegion, animated: true)
      
        
        var thePassLocationAnnotation = MKPointAnnotation()
        
        thePassLocationAnnotation.coordinate = passLocation
        
        thePassLocationAnnotation.title = "Black Mountain Pass"
        thePassLocationAnnotation.subtitle = "Wales"
        
      
        
        var thePassAnnotationView:MKPinAnnotationView = MKPinAnnotationView()
        var PassrightButton:UIButtonType = UIButtonType.DetailDisclosure
        self.theMapView!.addAnnotation(thePassLocationAnnotation)
       
       
 
        var Hwy1Annotation = MKPointAnnotation()
        
        Hwy1Annotation.coordinate = Hwy1Location
        
        Hwy1Annotation.title = "Highway 1"
        Hwy1Annotation.subtitle = "California, USA"
      
        var Hwy1AnnotationView:MKPinAnnotationView = MKPinAnnotationView()
        var hwy1rightButton:UIButtonType = UIButtonType.DetailDisclosure
        self.theMapView!.addAnnotation(Hwy1Annotation)
    
        
        
        var colDeBonetAnnotation = MKPointAnnotation()
        
        colDeBonetAnnotation.coordinate = ColpassLocation
        
        colDeBonetAnnotation.title = "Col de la Bonette"
        colDeBonetAnnotation.subtitle = "France"
        

        var ColDBAnnotationView:MKPinAnnotationView = MKPinAnnotationView()
        var ColDBrightButton:UIButtonType = UIButtonType.DetailDisclosure

     
        self.theMapView!.addAnnotation(colDeBonetAnnotation)
       
       
        
    }
    func mapView(mapView: MKMapView!, annotationView: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        showViewButton.hidden = false
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
