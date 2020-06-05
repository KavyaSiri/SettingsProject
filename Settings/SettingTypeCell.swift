//
//  SettingTypeCell.swift
//  Settings
//
//  Created by Goutham Devaraju on 25/03/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class SettingTypeCell: UITableViewCell {

    @IBOutlet var imageSetiing: UIImageView!
    
    @IBOutlet var labelSettingsTitle: UILabel!
    
    @IBOutlet var lableSettingSubTitle: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
