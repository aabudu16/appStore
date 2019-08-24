//
//  loginView.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    func setupView(){
        addSubview(backgroundImage)
        
        
        backgroundImage.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
    
    let backgroundImage:UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "login image")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
        
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
