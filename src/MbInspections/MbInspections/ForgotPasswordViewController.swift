//
//  ForgotPasswordViewController.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import UIKit
import Foundation

class ForgotPasswordViewController: UIViewController {
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResetPassword(_ sender: Any) {
        let vc : AnyObject! = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        self.showDetailViewController(vc as! UIViewController, sender: self)
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        let vc : AnyObject! = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        self.showDetailViewController(vc as! UIViewController, sender: self)
        
    }

}
