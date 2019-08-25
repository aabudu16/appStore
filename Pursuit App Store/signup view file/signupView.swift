//
//  signupView.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class SignupView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSignupView()
    }
    
    func setupSignupView(){
       self.addSubview(backgroundImage)
        backgroundImage.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
    
    let backgroundImage:UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "pursuit-image 2")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
