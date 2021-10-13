//
//  ViewController.swift
//  session_10_homework
//
//  Created by Govind on 09/10/21.
//

import UIKit

class ViewController: UIViewController {
    var x : Bool = false
    var n  = 5

    override func viewWillAppear(_ animated: Bool) {
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "vc1" {

            let vc2 =  segue.destination as! callbackViewController

        
        vc2.callbackclousre = { text in

            print("text = \(text!)")
       
        }
        }}
    }
    @IBOutlet weak var tableview: UITableView!
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        self.registerxib()
        tableview.delegate = self
        tableview.dataSource = self
        
        
    
                
    }
    }

extension ViewController
{
    func registerxib()
    {
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableview.register(nib, forCellReuseIdentifier: "TableViewCell")
    }
}
extension ViewController : eventacion
{
         func eventhandler(atcell cell : UITableViewCell)
{
            guard let indexpath = self.tableview.indexPath(for: cell) else {
                return
            }
        print("view controller get notified at cell \(indexpath.row)")
    }
    
}


extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return n
            
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.eventdelegate = self
        cell?.callbackhandler = { (cell) in
            guard let indexpath = self.tableview.indexPath(for: cell) else {
                return
            }
        print("view controller get notified at cell \(indexpath.row)")
        
            
        }
        //cell?.callbackhandler = handlecallback
       return cell ?? UITableViewCell()
    
    }
   /* func handlecallback(_ cell : UITableViewCell)
    {
        guard let indexpath = self.tableview.indexPath(for: cell) else {
            return
        }
    print("view controller get notified at cell \(indexpath.row)")
    }*/
}

