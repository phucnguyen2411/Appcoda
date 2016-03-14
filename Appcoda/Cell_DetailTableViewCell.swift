//
//  Cell_DetailTableViewCell.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/14/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

import UIKit

class Cell_DetailTableViewCell: UITableViewCell , UITableViewDataSource{

    
    @IBOutlet weak var fieldLabel: UILabel!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //4 value in data table view
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! Cell_DetailTableViewCell
        //config cell
        
        
        
        
        
        return cell
    }
    
    
}
