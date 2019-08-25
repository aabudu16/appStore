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
        let stackView = createStackView(objects: [firstName, lastName, email, password, signupButton])
       self.addSubview(backgroundImage)
       self.addSubview(stackView)
        self.addSubview(pursuitImage)
        backgroundImage.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        stackView.frame = CGRect(x: 28, y: 300, width: Int(frame.width - 60 ), height: 300)
        //pursuitImage.frame = CGRect(x: frame.width - 270, y: 100, width: 150, height: 200)
    }
    
    let backgroundImage:UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "signup image")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let pursuitImage:UIImageView = {
        let pursuitImage = UIImageView(image: "pursuit-logo", borderWidth: 4, borderColor: UIColor.blue.cgColor)
        return pursuitImage
    }()
    
    let firstName:UITextField = {
        let firstName = UITextField(placeholder: "First name", borderWidth: 4, borderColor: UIColor.lightGray.cgColor)
        return firstName
    }()
    
    let lastName:UITextField = {
        let lastName = UITextField(placeholder: "Last name", borderWidth: 4, borderColor: UIColor.lightGray.cgColor)
        return lastName
    }()
    
    let email:UITextField = {
        let email = UITextField(placeholder: "Email", borderWidth: 4, borderColor: UIColor.lightGray.cgColor)
        return email
    }()
    
    let password:UITextField = {
        let password = UITextField(placeholder: "Password", borderWidth: 4, borderColor: UIColor.lightGray.cgColor)
        return password
    }()
    
    let signupButton:UIButton = {
        let button = UIButton(setTitle: "Sign up", borderWidth: 4, borderColor: UIColor.blue.cgColor)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        return button
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
