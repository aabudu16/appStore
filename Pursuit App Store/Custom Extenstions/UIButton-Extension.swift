//
//  UIButton-Extension.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

extension UIButton{
    
    public convenience init(setTitle:String, borderWidth:CGFloat, borderColor:CGColor ){
        self.init()
        self.setTitle(setTitle, for: .normal)
        self.setTitleColor(.black, for: .highlighted)
        self.backgroundColor = .clear
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 4
        self.layer.borderColor = borderColor
        //size
        self.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
    }
}
