//
//  loginView.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var loginAction: (() -> Void)?
    var signupAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    func setupView(){
        let stackview = createStackView(objects: [emailTextField, passwordTextField, loginButton, signupButton])
        
        addSubview(backgroundImage)
        addSubview(stackview)
        addSubview(pursuitImageView)
        
        pursuitImageView.frame = CGRect(x: frame.width - 270, y: 100, width: 150, height: 200)
        backgroundImage.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        
   //     stackview.translatesAutoresizingMaskIntoConstraints = false
//        stackview.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        stackview.topAnchor.constraint(equalTo: self.topAnchor, constant: 520).isActive = true
//        stackview.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:50).isActive = true
        stackview.frame = CGRect(x: 28, y: 500, width: Int(frame.width - 60 ), height: 230)
    }
    
    let backgroundImage:UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "login image")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }()
    
    let pursuitImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pursuit-logo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
   
    
    let emailTextField:UITextField = {
        let textField = UITextField(placeholder: "Enter Email", borderWidth: 5, borderColor: UIColor.gray.cgColor)
        return textField
    }()
    
    let passwordTextField:UITextField = {
        let textField = UITextField(placeholder: "Enter Password", borderWidth: 5, borderColor: UIColor.gray.cgColor)
        return textField
    }()
    
    let loginButton:UIButton = {
        let button = UIButton(setTitle: "Login", borderWidth: 4)
        button.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        return button
    }()
    
    let signupButton:UIButton = {
        let button = UIButton(setTitle: "Sign up", borderWidth: 4)
        button.addTarget(self, action: #selector(signupButtonAction), for: .touchUpInside)
        return button
    }()
    //    func mainStackView() -> UIStackView{
    //        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, signupButton])
    //        stackView.axis = .vertical
    //        stackView.distribution = .fillProportionally
    //        stackView.spacing = 15
    //        return stackView
    //    }
    @objc func loginButtonAction(){
        loginAction?()
    }
    
    @objc func signupButtonAction(){
        signupAction?()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
