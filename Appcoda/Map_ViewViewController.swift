//
//  Map_ViewViewController.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/16/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

import UIKit
import MapKit

class Map_ViewViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    
    var restaurant:Restaurant!
    
    
    override func viewDidLoad() {

        
        //con vert address to coordinate and annotate it on maps
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: {
            placemarks, error in
            if error != nil {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                // Get the first placemark
                let placemark = placemarks[0]
                
                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    
                    // Display the annotation
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
            
        })
        
        
        mapView.delegate = self
        
        
        //Custom mapview controller
        mapView.showsCompass = true
        mapView.showsScale = true
        mapView.showsUserLocation = true
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //add image to annomation
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "My Pin"
        
        
        if annotation.isKindOfClass(MKUserLocation){
            return nil
        }
        
        // dung lai annomation neu co the
        var annomationView:MKPinAnnotationView? = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView
        
        if annomationView == nil {
            annomationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annomationView?.canShowCallout = true
        
        }
        
        let leftIconView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(named: restaurant.image)
        annomationView?.leftCalloutAccessoryView = leftIconView
        
        
        
        //Custom pin color
        annomationView?.pinTintColor = UIColor.redColor()
        
        return annomationView
        
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
