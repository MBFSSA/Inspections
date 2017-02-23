//
//  FirstViewController.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import UIKit
import InspectionsLib

class OptionsViewController: UIViewController {

    @IBOutlet weak var lblUserFullname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let user = ApplicationVariables.CurrentUser!
        
        lblUserFullname.text = user.firstName + " " + user.lastName
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

