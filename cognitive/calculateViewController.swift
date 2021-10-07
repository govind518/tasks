//
//  calculateViewController.swift
//  cognitive
//
//  Created by Govind on 06/10/21.
//

import UIKit
import Foundation

class calculateViewController: UIViewController {
    var number : Double = 0;
   
    @IBOutlet weak var rounds0 : UIButton!
    @IBOutlet weak var rounds1 : UIButton!
    @IBOutlet weak var rounds2 : UIButton!
    @IBOutlet weak var rounds3 : UIButton!
    @IBOutlet weak var rounds4 : UIButton!
    @IBOutlet weak var rounds5 : UIButton!
    @IBOutlet weak var rounds6 : UIButton!
    @IBOutlet weak var rounds7 : UIButton!
    @IBOutlet weak var rounds8 : UIButton!
    @IBOutlet weak var rounds9 : UIButton!
    @IBOutlet weak var rounds10 : UIButton!
    @IBOutlet weak var rounds11 : UIButton!
    @IBOutlet weak var rounds12 : UIButton!
    @IBOutlet weak var rounds13 : UIButton!
    @IBOutlet weak var rounds14 : UIButton!
    @IBOutlet weak var rounds15 : UIButton!
    @IBOutlet weak var rounds16 : UIButton!
    @IBOutlet weak var rounds17 : UIButton!
    @IBOutlet weak var rounds18 : UIButton!
    @IBOutlet weak var rounds19 : UIButton!
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       rounds0.layer.cornerRadius = 0.5*rounds0.bounds.size.width
        rounds0.clipsToBounds = true
        rounds1.layer.cornerRadius = 0.5*rounds1.bounds.size.width
         rounds1.clipsToBounds = true
        rounds2.layer.cornerRadius = 0.5*rounds2.bounds.size.width
         rounds2.clipsToBounds = true
        rounds3.layer.cornerRadius = 0.5*rounds3.bounds.size.width
         rounds3.clipsToBounds = true
        rounds4.layer.cornerRadius = 0.5*rounds4.bounds.size.width
         rounds4.clipsToBounds = true
        rounds5.layer.cornerRadius = 0.5*rounds5.bounds.size.width
         rounds5.clipsToBounds = true
        rounds6.layer.cornerRadius = 0.5*rounds6.bounds.size.width
         rounds6.clipsToBounds = true
        rounds7.layer.cornerRadius = 0.5*rounds7.bounds.size.width
         rounds7.clipsToBounds = true
        rounds8.layer.cornerRadius = 0.5*rounds8.bounds.size.width
         rounds8.clipsToBounds = true
        rounds9.layer.cornerRadius = 0.5*rounds9.bounds.size.width
         rounds9.clipsToBounds = true
        rounds10.layer.cornerRadius = 0.5*rounds10.bounds.size.width
         rounds10.clipsToBounds = true
        rounds11.layer.cornerRadius = 0.5*rounds11.bounds.size.width
         rounds11.clipsToBounds = true
        rounds12.layer.cornerRadius = 0.5*rounds12.bounds.size.width
         rounds12.clipsToBounds = true
        rounds13.layer.cornerRadius = 0.5*rounds13.bounds.size.width
         rounds13.clipsToBounds = true
        rounds14.layer.cornerRadius = 0.5*rounds14.bounds.size.width
         rounds14.clipsToBounds = true
        rounds15.layer.cornerRadius = 0.5*rounds15.bounds.size.width
         rounds15.clipsToBounds = true
        rounds16.layer.cornerRadius = 0.5*rounds16.bounds.size.width
         rounds16.clipsToBounds = true
        rounds17.layer.cornerRadius = 0.5*rounds17.bounds.size.width
         rounds17.clipsToBounds = true
        rounds18.layer.cornerRadius = 0.1*rounds18.bounds.size.width
         rounds18.clipsToBounds = true
       
        
    }
    
    
    @IBAction func dotoperation(_ sender: Any) {
       
        
        let dot = "."
        if (resultlabel.text!.contains(dot))
        {
            let alert = UIAlertController(title: "double . is invalid", message: "you can't add double .", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: {(Void)-> Void in return}))

            self.present(alert, animated: true)
        }
        else{
        resultlabel.text! = resultlabel.text! + dot
    }
        
    }
    
    
    @IBAction func mathreset(_ sender: UIButton) {
        switch (sender.tag) {
        case 13:
            let percentile = "/100 *"
            resultlabel.text! = resultlabel.text! + percentile
        case 12:
            resultlabel.text = ""
        case 17:
            let plus = "+"
            resultlabel.text! = resultlabel.text! + plus
        case 16:
            let minus = "-"
            resultlabel.text! = resultlabel.text! + minus
        case 15:
            let multiply = "*"
            resultlabel.text! = resultlabel.text! + multiply
        case 14:
            let divide = "/"
            resultlabel.text! = resultlabel.text! + divide
        
        case 18:
            let equation:NSString = resultlabel.text! as NSString
            let expr = NSExpression(format: equation as String)
            if let result = expr.expressionValue(with: nil, context: nil) as? NSNumber {
                let x = result.doubleValue
                resultlabel.text! = String (x)
                print(x)
                
                
            } else {
                print("failed")
            }

            

        default:
            return
        }
      
    }
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        
     
            resultlabel.text! = resultlabel.text!  + String(sender.tag - 1)
        
        
       
        
    }
    
        
        
    
    
    }
    


