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
        self.clipsToBounds = true
        self.layer.cornerRadius = 78
        self.contentMode = .scaleAspectFit
        self.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self.widthAnchor.constraint(equalToConstant: 160).isActive = true
        self.heightAnchor.constraint(equalToConstant: 160).isActive = true
        //self.layer.cornerRadius = self.frame.size.height / 2
        //self.clipsToBounds = true
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor(red: 65/255, green: 67/255, blue: 225/255, alpha: 1).cgColor
    }
}
