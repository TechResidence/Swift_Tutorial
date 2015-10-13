//
//  ViewController.swift
//  String
//
//  Created by [MMasahito](https://github.com/MMasahito) on 2015/10/02.
//  Copyright © 2015年 MMizogaki. All rights reserved.
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
        
        let address = "東京都渋谷区神宮前３−５−６"
        let findIndex = address.characters.indexOf("都")
        
        if findIndex != nil {
           
            let address1 = address[address.startIndex...findIndex!]
            print("address1：\(address1)")
            
            
            let start2 = findIndex?.successor() //インデックスを１つ進める
            let end2 = address.endIndex
            let address2 = str[start2!..<end2]
            print("address2：\(address2)")
            
        }else{
            print("not found")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

