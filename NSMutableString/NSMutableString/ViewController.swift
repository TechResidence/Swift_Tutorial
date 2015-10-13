//
//  ViewController.swift
//  NSMutableString
//
//  Created by [MMasahito](https://github.com/MMasahito) on 2015/10/02.
//  Copyright © 2015年 MMizogaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string:NSMutableString = "Masahito Mizogaki"
        string.deleteCharactersInRange(NSMakeRange(1,4))
        print(string)
        
        
        string.appendString("4月５日")
        print(string)
        
        string.insertString("ASDFG", atIndex: 3)
        print(string)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

