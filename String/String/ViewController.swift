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
        
        let hello = String("混沌とした世界へようこそ")
        print(hello)
        
        
        /** String cast */
        let entries = 30000
        let staff = 7000000000
        let str1 = "一生に出会える人間は" + String(entries) + "人。"
        let str2 = "一生会うこともない人間" + String(staff - entries) + "人です。"
        print(str1 + str2)
        
        
        /** string add */
        let name1 = "Yukimasa"
        let name2 = "Hamana"
        let strName = name1 + name2 + "さん"
        print("by \(strName)")
        
        
        /** string plusEqual */
        let week = ["日", "月", "火", "水", "木", "金", "土"]
        print(week)
        var oneweek = ""
        for day in week {
            oneweek += day
        }
        print(oneweek)
        
        
        
        let str = "SWIFT"
        
        
        
        /* Swift2.0で変わった */
        let num = (str).characters.count
        print(num)
        
        
        /** String Fix */
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
        
        
        /** string search */
        let address = "東京都渋谷区神宮前３−５−６"
        let findIndex = address.characters.indexOf("都")
        
        if findIndex != nil {
           
            let address1 = address[address.startIndex...findIndex!]
            print("address1：\(address1)")
            
            
            let start2 = findIndex?.successor()
            let end2 = address.endIndex
            let address2 = str[start2!..<end2]
            print("address2：\(address2)")
            
        }else{
            print("not found")
        }
        
        
        /** string add ♡ */
        var message = ""
        
        for char in str.characters {
            message += String(char) + "♡"
        }
        print(message, terminator: "")
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        /** array search strig */
        let itemList = ["adi-omotesando-S", "nik-tech-M", "adi-risidennce-M", "nor-mmizogaki-S"]
        var markAdi:[String] = []
        var sizeS:[String] = []
        
        for item in itemList {

            if item.hasPrefix("adi") {
                markAdi.append(item)
            }
   
            if item.hasSuffix("S") {
                sizeS.append(item)
            }
            
        }
        print(markAdi)
        print(sizeS)
        
        
        /** string index rangeOfString */
        let str = "あいうえおかきくけこさしすせそ"
        let word = "うえお"
        let range:Range? = str.rangeOfString(word)
        
        if let theRange = range {
            
            let start:String.Index = theRange.startIndex
            let end:String.Index = theRange.endIndex
            
            
            print("rangeの\(range!)は、\(str[theRange])")
            print("startの\(start)番は、\(str[start])")
            print("endの\(end)番は、\(str[end])")
            print("start..<endの範囲は、\(str[start..<end])")
        } else {
            print("「\(word)」は見つかりませんでした。")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

