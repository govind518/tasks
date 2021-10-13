//
//  tableview_accesory.swift
//  session_10_homework
//
//  Created by Govind on 10/10/21.
//

import UIKit

class tableview_accesory: UIViewController



{
    @IBOutlet weak var label1: UILabel!
    var tabledata : [String] = ["first", "second","third", "fourth"]
    var updatenametext : UITextField!
    @IBOutlet weak var tableview : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
        addrows(self)
    }
    
    @IBAction func addrows(_ sender: Any)
    
    {
        
        let alert = UIAlertController(title: "add cells", message: "add new cell", preferredStyle: .alert)
      
        let alertaction = UIAlertAction(title: "add task", style: .default, handler: {(action) in
            let updatename = self.updatenametext?.text
           print(updatename!)
            self.tabledata.append(updatename!)
            print(self.tabledata)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
            
        })
        alert.addAction(alertaction)
        alert.addTextField(configurationHandler: {(textfield) in
                            self.updatenametext = textfield})
        self.present(alert, animated: true, completion: nil)
        
    }
    
    }
extension tableview_accesory : UITableViewDelegate, UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tabledata.count
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableview.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableview.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        }
        else{
            tableview.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableview.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       cell.textLabel?.text = tabledata[indexPath.row]
       return cell    }
}
