//
//  YBLocalizedString.swift
//  String
//
//  Created by 李延博 on 16/7/4.
//  Copyright © 2016年 lyb. All rights reserved.
//

import UIKit

var bundle : NSBundle? = nil
class YBLocalizedString: NSObject {
    
    /// strings文件名
    static let stringsFileName : String = "YBLocalized"
    
    enum languageType : String {

        case Simplified = "zh-Hans"//简体中文
        case English = "en"        //英文
        
    }
    /**
     设置语种
     
     - parameter language: languageType
     */
    class func setUserlanguage(language : languageType){
        
        let path = NSBundle.mainBundle().pathForResource(language.rawValue, ofType: "lproj")
        bundle = NSBundle(path: path!)
        
    }
    /**
     获取相应字符串
     
     - parameter key: 字符串Key
     
     - returns: 相应字符串
     */
    class func getString(key : String) -> String? {
        
        return bundle?.localizedStringForKey(key, value: nil, table: stringsFileName)
    }
    /**
     根据系统设置获取相应字符串
     
     - parameter key: 字符串Key
     
     - returns: 相应字符串
     */
    class func getSystemString(key : String) -> String? {
    
       let languages = NSLocale.preferredLanguages()
    
       let language = languages.first
    
       var path : String? = nil
       if ((language?.hasPrefix(languageType.Simplified.rawValue)) == true) {//简体中文
        
           path = NSBundle.mainBundle().pathForResource(languageType.Simplified.rawValue, ofType: "lproj")
       }else if((language?.hasPrefix(languageType.English.rawValue)) == true){//英文
        
           path = NSBundle.mainBundle().pathForResource(languageType.English.rawValue, ofType: "lproj")
       }else {//暂无语言库
        
           let alert = UIAlertView(title: "提示", message: "暂无此语言库", delegate: self, cancelButtonTitle: "确定")
           alert.show()
        
           return nil
       }
    
       let bundle = NSBundle(path: path!)

       return bundle?.localizedStringForKey(key, value: nil, table: "YBLocalized")
    }
    
    
}
