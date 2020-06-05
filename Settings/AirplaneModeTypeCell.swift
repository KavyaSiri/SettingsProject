//
//  AirplaneModeTypeCell.swift
//  Settings
//
//  Created by Goutham Devaraju on 25/03/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class AirplaneModeTypeCell: UITableViewCell {

    @IBOutlet var imageAirplane: UIImageView!
    
    @IBOutlet var labelAirplane: UILabel!
    
    @IBOutlet var switchAirplane: UISwitch!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
