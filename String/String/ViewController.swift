//
//  ViewController.swift
//  String
//
//  Created by Masahito Mizogaki on 2015/10/02.
//  Copyright © 2015年 Masahito Mizogaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "SWIFT"
        
        /* Swift2.0で変わった */
        let num = (str).characters.count
        print(num)
        
        
        if (str == "Swift") {
            
            print("Swiftと一致")
        } else if (str == "SWIFT") {
            
            print("SwiftとSWIFTが一致:これでも通っちゃう！")
        }
        
        if(str.lowercaseString == "swift"){
            
            print("大文字小文字を区別しなければ同じ",str.lowercaseString)
        }
        if(str.uppercaseString == "SWIFT"){
            
            print("大文字小文字を区別しなければ同じ",str.uppercaseString)
        } else {
            
            print("全然違う")
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

