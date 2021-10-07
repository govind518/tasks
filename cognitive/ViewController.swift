//
//  ViewController.swift
//  cognitive
//
//  Created by Govind on 20/09/21.
//

import UIKit

class ViewController: UIViewController,datapass  {
    
    func printcontentsofarray(passedvalue: [String]) {
        tasks = passedvalue
        
        
    }
    
    @IBOutlet var tableview : UITableView!
   
    
    @IBAction func showtasks ()
    {
        
        print(tasks)
        
        tableview.reloadData()
       
    }
   
    var tasks : [String] = []
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        showtasks()
     
        
    }
    @IBAction func settings ()
    {
        let vc1 = storyboard?.instantiateViewController(identifier: "settingsVC") as! SettingsViewController
       
        vc1.title = "settings page"
        
        navigationController?.pushViewController(vc1, animated: true)
        
    }
    
    @IBAction func calculate()
    {
        
            let vc4 = storyboard?.instantiateViewController(identifier: "calculateVC") as! calculateViewController
           
            vc4.title = "CALCULATOR"
            
            navigationController?.pushViewController(vc4, animated: true)
    }
    
    @IBAction func apicalling  ()
    {
        
        let vc2 = storyboard?.instantiateViewController(identifier: "ApiVC") as! ApiViewController
       
        vc2.title = "api calling"
        
        navigationController?.pushViewController(vc2, animated: true)
    }
    @IBAction func calculator ()
    {
        let vc3 = storyboard?.instantiateViewController(identifier: "calculatorVC") as! calcuatorViewController
       
        vc3.title = "Calculator"
        
        navigationController?.pushViewController(vc3, animated: true)
    }
    
    @IBAction func chatpage ()
    {
        let vc5 = storyboard?.instantiateViewController(identifier: "chatVC") as! chatViewController
       
        vc5.title = "Chat"
        
        navigationController?.pushViewController(vc5, animated: true)
    }
   
    @IBAction func tap()
    {
        
        tasks.removeAll()
        tableview.reloadData()
        let vc = storyboard?.instantiateViewController(identifier: "entry") as! TaskViewController
        vc.delegate = self
        vc.title = "new tasks"
        
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
