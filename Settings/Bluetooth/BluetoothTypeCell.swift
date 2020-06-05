//
//  BluetoothTypeCell.swift
//  Settings
//
//  Created by Mac Mini on 20/04/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class BluetoothTypeCell: UITableViewCell {

    @IBOutlet weak var bluetoothSwitch: UISwitch!
    @IBOutlet weak var bluetoothLbel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
