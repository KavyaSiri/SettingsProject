//
//  BluetoothViewController.swift
//  Settings
//
//  Created by Mac Mini on 16/04/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class BluetoothViewController: UIViewController {
    
    let arraydevicesNames = [["wifiNetworkNme" : "Echp Dot-R3",
                               "sttus" : "1"],
                              ["wifiNetworkNme" : "Hll Speker",
                               "sttus" : "0"],
                              ["wifiNetworkNme" : "SiriHOme",
                               "sttus" : "0"],
                              ["wifiNetworkNme" : "GouthmXSMX",
                               "sttus" : "0"],
                              ["wifiNetworkNme" : "Echo",
                               "sttus" : "0"]]
    @IBOutlet var viewDiscoverble: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
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

extension BluetoothViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 1{
            
            return 100
        }
        else {
        return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1{
       return viewDiscoverble
        }
        else {
            return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            
            return 1
        }
        else{
            
            return arraydevicesNames.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if indexPath.section == 0{
            
            let bluetoothOption = tableView.dequeueReusableCell(withIdentifier: "BluetoothTypeCellID", for: indexPath) as! BluetoothTypeCell
                   
                   return bluetoothOption
            
        }
        else {
            let bluetoothDevicesConnected = tableView.dequeueReusableCell(withIdentifier: "MyDevicesTypeCellID", for: indexPath) as! MyDevicesTypeCell
            
            let dictBluetooth = arraydevicesNames[indexPath.row]
            
            let stringNetworkNme = dictBluetooth["wifiNetworkNme"]
            let stringDevicesSttus  = dictBluetooth["sttus"]
            if stringDevicesSttus == "0"
            {
            bluetoothDevicesConnected.lbelConnectedSttus.text = "Not Connected"
            }
            else {
                
                bluetoothDevicesConnected.lbelConnectedSttus.text = "Connected"
            }
            bluetoothDevicesConnected.lbelMyDevices.text = stringNetworkNme
            
            return bluetoothDevicesConnected
            
        }
    }
    

    
    
    
    
    
    
    
    
}
