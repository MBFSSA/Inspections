//
//  ViewController.swift
//  walking-scroll-view-exercise
//
//  Created by Mark Hamilton on 2/24/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 264
    let HEIGHT: CGFloat = 353
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for x in stride(from: 0, to: 5, by: 1){
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            let imgY: CGFloat = 310 // scrollView.frame.size.height - (HEIGHT + 60)
            
            imgView.frame = CGRect(x: -WIDTH + (WIDTH * CGFloat(x)), y: imgY, width: WIDTH, height: HEIGHT)
        }
      
        
        scrollView.contentSize = CGSize(width: WIDTH * 5, height: scrollView.frame.size.height)
        
    }


}

