//
//  SettingsViewController.swift
//  Settings
//
//  Created by Goutham Devaraju on 25/03/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var tableViewSettingd: UITableView!
    
    //Later sort out the array of dict values by id instead of array of arrays
    var arraySettings: [[String: [ [String :String]]]] = [
        [
            "rows_data" : [
                
                ["image_name" : "airplain_icon",
                 "title" :"Airplane Mode",
                 "Switch_value" : "1"],
                
                ["image_name" : "wifi_icon",
                 "title" :"Wi-Fi",
                 "subtitle" : "Home123"],
                
                ["image_name" : "bluetooth_icon",
                 "title" :"Bluetooth",
                 "BluetoothStatus" : "ON"],
                
                ["image_name" : "mobileData_wifi",
                 "title" :"Mobile Data"
                ],
                
                ["image_name" : "personal_hotspot_icon",
                 "title" :"Personal Hotspot"
                ]
            ]
        ],
        [
            "rows_data" : [
                
                ["image_name" : "airplain_icon",
                 "title" :"Notifications"],
                
                ["image_name" : "wifi_icon",
                 "title" :"Sounds And Haptics"
                ],
                
                ["image_name" : "bluetooth_icon",
                 "title" :"Do Not Distrub"
                ],
                
                ["image_name" : "mobileData_wifi",
                 "title" :"Screen Time"
                ]
            ]
        ],
        [
            "rows_data" : [
                
                ["image_name" : "airplain_icon",
                 "title" :"General"],
                
                ["image_name" : "wifi_icon",
                 "title" :"Control Center"
                ],
                
                ["image_name" : "bluetooth_icon",
                 "title" :"Display And Brightness"
                ],
                
                ["image_name" : "mobileData_wifi",
                 "title" :"Accessibility"
                ]
            ]
        ]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.barTintColor = UIColor.black
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySettings.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let dictionary_settings = arraySettings[section]
        
        let row_data = dictionary_settings["rows_data"]
        
        if let arrayRows = row_data{
            return arrayRows.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dict_settings = arraySettings[indexPath.section]
        let row_data = dict_settings["rows_data"]
        
        if indexPath.section == 0 && indexPath.row == 0{
            
            var label_title = ""
            var switch_value = "0"
            var imageName = ""
            
            if let array_rows = row_data{
                
                let dict_row_element = array_rows[indexPath.row]
                
                if let title = dict_row_element["title"]{
                    label_title = title
                }
                
                if let value = dict_row_element["Switch_value"]{
                    switch_value = value
                }
                
                if let name = dict_row_element["image_name"]{
                    imageName = name
                }
            }
            
            let cellAirplaneMode = tableView.dequeueReusableCell(withIdentifier: "AirplaneModeTypeCellID" , for: indexPath) as! AirplaneModeTypeCell
            
            //Setting image name
            cellAirplaneMode.imageAirplane.image = UIImage(named: imageName)
            
            //Settings Ariplain title
            cellAirplaneMode.labelAirplane.text = label_title
            
            //Settings switch value
            if switch_value == "1"{
                cellAirplaneMode.switchAirplane.isOn = true
            }
            else{
                cellAirplaneMode.switchAirplane.isOn = false
            }
            
            return cellAirplaneMode
        }
        else if indexPath.section == 0 && (indexPath.row == 1 || indexPath.row == 2) {
            
            var label_title = ""
            var label_sub_title = ""
            var imageName = ""
            
            let dict_settings = arraySettings[indexPath.section]
            let row_data = dict_settings["rows_data"]
            
            if let array_rows = row_data{
                
                let dict_row_element = array_rows[indexPath.row]
                
                if let title = dict_row_element["title"]{
                    label_title = title
                }
                
                if let sub_title = dict_row_element["subtitle"]{
                    label_sub_title = sub_title
                }
                
                if let name = dict_row_element["image_name"]{
                    imageName = name
                }
            }
            
            
            let cellWifi = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
            
            //Setting image name
            cellWifi.imageSetiing.image = UIImage(named: imageName)
            
            cellWifi.labelSettingsTitle.text = label_title
            cellWifi.lableSettingSubTitle.text = label_sub_title
            
            return cellWifi
        }
            
        else {
            
            var label_title = ""
            var imageName = ""
            
            let dict_settings = arraySettings[indexPath.section]
            let row_data = dict_settings["rows_data"]
            
            if let array_rows = row_data{
                
                let dict_row_element = array_rows[indexPath.row]
                
                if let title = dict_row_element["title"]{
                    label_title = title
                }
                
                if let name = dict_row_element["image_name"]{
                    imageName = name
                }
            }
            
            let cellBluetooth = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
            cellBluetooth.labelSettingsTitle.text = label_title
            cellBluetooth.imageSetiing.image = UIImage(named: imageName)
            cellBluetooth.lableSettingSubTitle.isHidden = true
            return cellBluetooth
            
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let viewForSection = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        viewForSection.backgroundColor = UIColor.black
        return viewForSection
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 30
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Selected section: \(indexPath.section) , Selected Row: \(indexPath.row)")
        if indexPath.section == 0 && indexPath.row == 1 {
            
            performSegue(withIdentifier: "settingsToWifi", sender: nil)
            
        }
        else if indexPath.section == 0 && indexPath.row == 2 {
            
            performSegue(withIdentifier: "settingsToBlooth", sender: nil )
            
        }
        else if indexPath.section == 0 && indexPath.row == 3 {
            performSegue(withIdentifier: "settingsToMobiledata", sender: nil)
    
        }
        else if indexPath.section == 0 && indexPath.row == 4 {
                   performSegue(withIdentifier: "settingsToPersonelHotspot", sender: nil)
           
               }
       
    }
    
}




//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    if indexPath.row == 0{
//
//
//        let cellAirplaneMode = tableView.dequeueReusableCell(withIdentifier: "AirplaneModeTypeCellID" , for: indexPath) as! AirplaneModeTypeCell
//        cellAirplaneMode.labelAirplane.text = "Airplane Mode"
//        cellAirplaneMode.imageAirplane.image = UIImage(named: "airplain_icon")
//        return cellAirplaneMode
//
//
//    }
//    else if indexPath.row == 1 {
//
//        let cellWifi = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
//        cellWifi.labelSettingsTitle.text = "Wi-Fi"
//        cellWifi.lableSettingSubTitle.text = "home123"
//        cellWifi.imageSetiing.image = UIImage(named: "wifi_icon")
//        return cellWifi
//
//
//    }
//
//    else if indexPath.row == 2 {
//
//        let cellBluetooth = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
//        cellBluetooth.labelSettingsTitle.text = "Bluetooth"
//        cellBluetooth.imageSetiing.image = UIImage(named: "bluetooth_icon")
//        cellBluetooth.lableSettingSubTitle.isHidden = true
//        return cellBluetooth
//
//
//    }
//
//    else if indexPath.row == 3 {
//
//        let cellMobileData = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
//        cellMobileData.labelSettingsTitle.text = "Mobile Data"
//        cellMobileData.imageSetiing.image = UIImage(named: "mobileData_wifi")
//        cellMobileData.lableSettingSubTitle.isHidden = true
//
//        return cellMobileData
//
//
//    }
//    else  {
//
//        let cellPersonalHotspot = tableView.dequeueReusableCell(withIdentifier: "SettingTypeCellID" , for: indexPath) as! SettingTypeCell
//        cellPersonalHotspot.labelSettingsTitle.text = "Personal Hotspot"
//        cellPersonalHotspot.imageSetiing.image = UIImage(named: "personal_hotspot_icon")
//        cellPersonalHotspot.lableSettingSubTitle.isHidden = true
//
//        return cellPersonalHotspot
//    }
//}
