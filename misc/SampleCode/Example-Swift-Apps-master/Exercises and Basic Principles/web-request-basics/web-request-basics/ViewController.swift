//
//  ViewController.swift
//  web-request-basics
//
//  Created by Mark Hamilton on 2/21/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create new WKWebView
        webView = WKWebView()
        
        // On Parent's Coordinate System, Add WKWebView
        container.addSubview(webView)
        
        // Container Bounds Not With Constraints Applied
        print(container.bounds.width)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Define based on Parent Coordinates
        let frame = CGRect( x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        
        // Change Frame After Defined
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog")
        
    }
    
    func loadRequest(_ urlStr: String) {
        
        let url = URL(string: urlStr)!
        
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
    
    @IBAction func buttonOnePressed(_ sender: AnyObject) {
        
        loadRequest("https://www.dryverless.com")
    }

    @IBAction func buttonTwoPressed(_ sender: AnyObject) {
        
        loadRequest("https://developer.apple.com/swift/blog")
    }
    @IBAction func buttonThreePressed(_ sender: AnyObject) {
        
        loadRequest("https://www.GitHub.com/TheDarkCode/Example-Swift-Apps")
    }
}

