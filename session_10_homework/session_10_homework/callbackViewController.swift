//
//  callbackViewController.swift
//  session_10_homework
//
//  Created by Govind on 11/10/21.
//

import UIKit

class callbackViewController: UIViewController {
   
    var callbackclousre: ((String?)->())?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func callbak(_ sender: Any) {
        callbackclousre?("data")
        
        self.navigationController?.popViewController(animated: true)
    }
   
}
