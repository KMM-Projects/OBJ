//
//  ViewController.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 1/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let cylinder = DrawObject(number: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    cylinder.loadFile()
        
        let line = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 1))
        line.backgroundColor = UIColor.green
        self.view.addSubview(line)
    
        
        
    }



}

