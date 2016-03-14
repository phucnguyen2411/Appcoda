//
//  DetailRes_ViewController.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/8/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

import UIKit

class DetailRes_ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageDel: UIImageView!
    
    var imageDetail:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        //set image 
        imageDel.image = UIImage(named: imageDetail)
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
