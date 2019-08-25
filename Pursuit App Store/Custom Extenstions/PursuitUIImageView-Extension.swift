//
//  pursuitUIImageView-Extension.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/25/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

extension UIImageView{
    public convenience init(image:String,borderWidth:CGFloat, borderColor:CGColor){
        self.init()
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor.blue.cgColor
    }
}
