//
//  ForgotPasswordViewController.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import UIKit
import Foundation
import InspectionsLib

class ForgotPasswordViewController: UIViewController {
    
    
    @IBOutlet weak var lblEmail: UITextField!
   
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResetPassword(_ sender: Any) {
        
        AuthenticationService().forgotPassword(email: lblEmail.text!, completionHandler: forgotPasswordComplete)
        
        
        let vc : AnyObject! = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        self.showDetailViewController(vc as! UIViewController, sender: self)
    }
    
    
    func forgotPasswordComplete(res : String) -> Void{
        print(res)
    }

    
    @IBAction func btnBack(_ sender: Any) {
        let vc : AnyObject! = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        self.showDetailViewController(vc as! UIViewController, sender: self)
        
    }

}
