//
//  ConnectedWifiCell.swift
//  Settings
//
//  Created by Mac Mini on 16/04/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class ConnectedWifiCell: UITableViewCell {

    @IBOutlet weak var lbleNetworkNme: UILabel!
    
    
    @IBOutlet weak var imgeConnectedNetwork: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
