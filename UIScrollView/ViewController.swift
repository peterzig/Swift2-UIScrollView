//
//  ViewController.swift
//  UIScrollView
//
//  Created by Peter Zaporowski on 15.03.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 90 //width of the ImageView
    let HEIGHT: CGFloat = 90 //height of an ImageView

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for var x = 1; x <= 8; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 500, WIDTH, HEIGHT)
        }
        scrollView.contentSize = CGSizeMake( WIDTH * 10.5, scrollView.frame.size.height)
        
        // Width times 10.5 because we need more space for scrolling 8 ImageViews, Width times 8 cuts the last element of array
    }
}

