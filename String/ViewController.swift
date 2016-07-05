//
//  ViewController.swift
//  String
//
//  Created by lyb on 16/7/4.
//  Copyright © 2016年 lyb. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VDLocalizedString.setUserlanguage(VDLocalizedString.languageType.English)
        
        self.showLabel.text = VDLocalizedString.getString("showText")

    }

    @IBAction func chooseSimplified() {
        
        VDLocalizedString.setUserlanguage(VDLocalizedString.languageType.Simplified)
        
        self.showLabel.text = VDLocalizedString.getString("showText")
    }
    @IBAction func chooseEnglish() {
        
        VDLocalizedString.setUserlanguage(VDLocalizedString.languageType.English)
        
        self.showLabel.text = VDLocalizedString.getString("showText")
    }
    
    @IBAction func chooseSystem (){
        
        showLabel.text = VDLocalizedString.getSystemString("showText")
    }
    
}










