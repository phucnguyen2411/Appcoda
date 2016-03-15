//
//  DetailRes_ViewController.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/8/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

import UIKit

class DetailRes_ViewController: UIViewController , UITableViewDataSource,  UITableViewDelegate{
    
    
    
    @IBOutlet weak var imageDel: UIImageView!
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    var restaurant:Restaurant!
    
    var imageDetail:String = ""
    
    //change style tabbar
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageDel.image = UIImage(named: restaurant.image)
        
        //
        
        
        
        //set title for navi
        title = restaurant.name
    
    }

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! Cell_DetailTableViewCell

        print("Debug")
        
        //config cell
        switch indexPath.row
        {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
            print(restaurant.name)
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Been Here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, i have here" : "No i want go to here"
        default:
            cell.fieldLabel.text = "Test"
            cell.valueLabel.text = "Test"
            
        }
        
        cell.backgroundColor = UIColor.clearColor()
        
        
    
        return cell
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
