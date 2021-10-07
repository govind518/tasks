//
//  ViewController.swift
//  settings app
//
//  Created by Govind on 24/09/21.
//

import UIKit

class ViewController: UIViewController {
  
    
    
    @IBOutlet weak var tableview : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        
        tableview.dataSource = self
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "sec0")
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "sec1")
    }

}
    extension ViewController: UITableViewDelegate,UITableViewDataSource{

 func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
    if section == 0 {return 1}
    else if section == 1 {return 3}
    else if section == 2 {return 1}
    else if section == 3 {return 8}
    else{return 1}
 }
 
    
   func tableView    (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 0 {
        let cell = tableview.dequeueReusableCell(withIdentifier: "sec0", for: indexPath)
        return cell
    }
    
    else    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "sec1", for: indexPath)
        return cell
    }
   
   
 }
}

