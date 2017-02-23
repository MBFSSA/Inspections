//
//  LoginViewController.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import UIKit
import InspectionsLib
import InspectionsData

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        do
        {
            var user: User = try AuthenticationService().authenticateUser(email: txtEmail.text!, password: txtPassword.text!)
            
            ApplicationVariables.CurrentUser = user
            
            let vc : AnyObject! = self.storyboard?.instantiateViewController(withIdentifier: "HomeTabBarController")
            self.showDetailViewController(vc as! UITabBarController, sender: self)

            
        }
        catch(_)
        {
            let message = UIAlertController(title: "Authentication", message: "Invalid Credientials. Please try again", preferredStyle: UIAlertControllerStyle.alert)
            
            message.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) in
            message.dismiss(animated: true, completion: nil)
            }))
            
            present(message, animated: true, completion: nil)
            
        }
        
    }
    
    
}
