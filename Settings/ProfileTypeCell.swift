
//  ProfileTypeCell.swift
//  Settings
//
//  Created by Goutham Devaraju on 25/03/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class ProfileTypeCell: UITableViewCell {

    @IBOutlet var imageProfile: UIImageView!
   

    @IBOutlet var labelFullName: UILabel!
    
    
    @IBOutlet var lableValues: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
