//
//  RestaurantTableViewCell.swift
//  Appcoda
//
//  Created by Phuc .Ng on 3/8/16.
//  Copyright © 2016 com.phucng. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var imageRes: UIImageView!
    
    @IBOutlet weak var nameRes: UILabel!
    
    
    @IBOutlet weak var locationRes: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
