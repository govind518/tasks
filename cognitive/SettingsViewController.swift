//
//  SettingsViewController.swift
//  cognitive
//
//  Created by Govind on 03/10/21.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var tableview : UITableView!
    let tasks : [String] = ["About phone", "Systems apps updator", "Security status", "Privacy"]
    let arr2 : [String] = ["SIM cards $ mobile networks", "Wi-Fi", "Bluetooth" ," Poratable Hotspot"]
    let arr3 : [String] = ["Display", "wallpaper" ,"Themes", "Sounds $ vibrations"]
    let arr4 : [String] = ["Lock screen & password", "Notifications & status bar", "Full screen display", ""]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self

    }
    


}
extension SettingsViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
    }
    
}

extension SettingsViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0:
            return 4
        case 1:
          return 4
        case 2:
            return 4
        case 3:
            return 4
        default:
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0:
            
            return "Phone settings"
        case 1:
          return "Wireless & Networks"
        case 2:
            return "Personal"
        case 3:
            return "System and device"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = tasks[indexPath.row]
           return cell
        case 1:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = arr2[indexPath.row]
           return cell
        case 2:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = arr3[indexPath.row]
           return cell
        case 3:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = arr4[indexPath.row]
           return cell
        default:
        
            let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = tasks[indexPath.row]
           return cell
        }
    }
    
}
