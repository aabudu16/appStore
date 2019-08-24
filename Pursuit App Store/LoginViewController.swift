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
// to hide the top view of the navigation controller and enable the background image to fill the entire screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    func setupViewcontroller(){
        let mainView = LoginView(frame:self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.backgroundColor = .blue
        //need constraints for the login view.
        
        loginView.loginAction = loginPressed
        loginView.signupAction = signupPressed
    }
    
    func loginPressed(){
        print("login pressed")
    }
   func signupPressed(){
    print("signup pressed")
    }
}

