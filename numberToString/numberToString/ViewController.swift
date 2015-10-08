//
//  ViewController.swift
//  numberToString
//
//  Created by Masahito Mizogaki on 2015/10/02.
//  Copyright © 2015年 Masahito Mizogaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let weight = 175.5
        let package = 120.2
        let str1 = "身長" + weight.description + "cm"
        let str2 = "体重" + (weight + package).description + "kg"
        print(str1 + "\n" + str2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

