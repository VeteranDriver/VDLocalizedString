//
//  ViewController.swift
//  String
//
//  Created by 李延博 on 16/7/4.
//  Copyright © 2016年 lyb. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        YBLocalizedString.setUserlanguage(YBLocalizedString.languageType.English)
        
        self.showLabel.text = YBLocalizedString.getString("showText")

    }

    @IBAction func chooseSimplified() {
        
        YBLocalizedString.setUserlanguage(YBLocalizedString.languageType.Simplified)
        
        self.showLabel.text = YBLocalizedString.getString("showText")
    }
    @IBAction func chooseEnglish() {
        
        YBLocalizedString.setUserlanguage(YBLocalizedString.languageType.English)
        
        self.showLabel.text = YBLocalizedString.getString("showText")
    }
    
    @IBAction func chooseSystem (){
        
        showLabel.text = YBLocalizedString.getSystemString("showText")
    }
    
}










