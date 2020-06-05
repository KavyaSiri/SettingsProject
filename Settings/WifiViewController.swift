//
//  WifiViewController.swift
//  Settings
//
//  Created by Mac Mini on 16/04/20.
//  Copyright © 2020 Goutham. All rights reserved.
//

import UIKit

class WifiViewController: UIViewController {

    @IBOutlet var viewOtherNetworks: UIView!
    @IBOutlet var viewMyNetworksHeder: UIView!
    
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

extension WifiViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1{
             return viewMyNetworksHeder
        }
        else if section == 2{
            return viewOtherNetworks
        }
        else {
            
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 || section == 2{
            return 60
        }
        else
        {
            return 0
        
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        
        else if section == 1 {
            
            return 1
        }
        else {
        return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0
        {
            if indexPath.row == 0{
                 let wifiSwitch = tableView.dequeueReusableCell(withIdentifier: "WifiSwitchCellID" , for: indexPath) as! WifiSwitchCell
                 return wifiSwitch
            }
            else
            {
                let wifiConnected = tableView.dequeueReusableCell(withIdentifier: "ConnectedWifiCellID" , for: indexPath) as! ConnectedWifiCell
                wifiConnected.imgeConnectedNetwork.isHidden = false
                return wifiConnected
            }
        }
        else if indexPath.section == 1{
            
            let wifiConnected = tableView.dequeueReusableCell(withIdentifier: "ConnectedWifiCellID" , for: indexPath) as! ConnectedWifiCell
            wifiConnected.imgeConnectedNetwork.isHidden = true
            return wifiConnected
        }
        else {
            
            let wifiConnected = tableView.dequeueReusableCell(withIdentifier: "ConnectedWifiCellID" , for: indexPath) as! ConnectedWifiCell
            wifiConnected.imgeConnectedNetwork.isHidden = true
            return wifiConnected
            
        }
    }
    
    
    
    
}
