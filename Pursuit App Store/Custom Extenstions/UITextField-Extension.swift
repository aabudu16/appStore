//
//  UITextField-Extension.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//


//This File is an extension for UITextField that creates a specific type of custom text field and allows me to pass specific arguments

import UIKit

extension UITextField{
    
    public convenience init(placeholder:String, borderWidth:CGFloat, borderColor:CGColor ){
        self.init()
        self.borderStyle = .none
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.4)
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.autocorrectionType = .no
        // textview padding from the left
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 30))
        self.leftViewMode = .always
        //placeholder for the string name
        let placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor(white: 1, alpha: 1)]))
        self.attributedPlaceholder = placeholder
        //size
        self.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
    }
}

