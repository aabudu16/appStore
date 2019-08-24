//
//  ViewController.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var loginView:LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewcontroller()
    }

    func setupViewcontroller(){
        let mainView = LoginView(frame:self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.backgroundColor = .blue
        //need constraints for the login view.
    }
}

