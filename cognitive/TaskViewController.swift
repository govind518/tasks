//
//  TaskViewController.swift
//  cognitive
//
//  Created by Govind on 20/09/21.
//

import UIKit

class TaskViewController: UIViewController , UITextFieldDelegate {
    
   
    
    
    weak var delegate : datapass?
    @IBOutlet var field : UITextField!
    var addedtasks : [String] = []
   

    

    override func viewDidLoad() {
        super.viewDidLoad()

        field.delegate = self
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
       var text1 = field.text!
        if (!(text1.isEmpty ))
        {
        saveTask()
            
            field.text = ""
            return true}
        else{
            let alert = UIAlertController(title: "no-task situation", message: "you have added no tasks, do you want to continue without adding any task?", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(Void)-> Void in return}))
               
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action in print( "please add tasks")}))

            self.present(alert, animated: true)
            return true
        }
        
        
        
    }
    @IBAction func saveTask()
    {
    guard let text = field.text, !text.isEmpty else{
            
        let alert = UIAlertController(title: "no-task situation", message: "you have added no tasks, do you want to continue without adding any task?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(Void)-> Void in return}))
           
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action in print( "please add tasks")}))

        self.present(alert, animated: true)
       
        return
            }
    
        
        
        addedtasks.append(text)
        
        
        field.text = ""
      
        
        print(addedtasks)
        
        self.delegate?.printcontentsofarray( passedvalue: addedtasks)
        }
    
   
    
}
protocol datapass :AnyObject {
    func printcontentsofarray (passedvalue: [String])
    
}
