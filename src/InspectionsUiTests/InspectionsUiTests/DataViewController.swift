//
//  DataViewController.swift
//  InspectionsUiTests
//
//  Created by Ryan Johansen on 2017/02/18.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import UIKit
import InspectionsLib

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    
    @IBOutlet weak var lblOther: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var appName = InspectionsConstants().ApplicationName
        lblOther.text = appName
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

