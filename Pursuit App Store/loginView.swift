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
        let stackview = mainStackView()
        
        addSubview(backgroundImage)
        addSubview(stackview)
        
        backgroundImage.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        stackview.frame = CGRect(x: 28, y: 500, width: Int(frame.width - 60 ), height: 230)
    }
    
    let backgroundImage:UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "login image")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
        
    }()
    
    let emailTextField:UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.4)
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.layer.borderWidth = 5
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.autocorrectionType = .no
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
        textField.leftViewMode = .always
        //placeholder for the string name
        let placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor(white: 1, alpha: 1)]))
        textField.attributedPlaceholder = placeholder
        //size
        textField.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        return textField
    }()
    
    let passwordTextField:UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.4)
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.layer.borderWidth = 5
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.autocorrectionType = .no
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
        textField.leftViewMode = .always
        //placeholder for the string name
        let placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor(white: 1, alpha: 1)]))
        textField.attributedPlaceholder = placeholder
        //size
        textField.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        return textField
    }()
    
    let loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .highlighted)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.blue.cgColor
        //size
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        return button
    }()
    
    let signupButton:UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.black, for: .highlighted)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.blue.cgColor
        //size
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.addTarget(self, action: #selector(signupButtonAction), for: .touchUpInside)
        return button
    }()
    func mainStackView() -> UIStackView{
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, signupButton])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 15
        return stackView
    }
    @objc func loginButtonAction(){
        print("login button")
    }
    
    @objc func signupButtonAction(){
        print("sign up button")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
