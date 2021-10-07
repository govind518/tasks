//
//  ViewController.swift
//  TO-DO list
//
//  Created by Govind on 22/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableview : UITableView!
   
var tasks = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
    }

    @IBAction func tasksbutton()
    {
        let vc = storyboard?.instantiateViewController(identifier: "newvc") as! NewViewController
        vc.title = "Tasks"
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController : UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
    }
}
extension ViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}
