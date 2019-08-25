//
//  SignupViewController.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    var signupView:SignupView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
let signupView = SignupView(frame: self.view.frame)
      self.signupView = signupView
        view.addSubview(signupView)
        signupView.translatesAutoresizingMaskIntoConstraints = false
    }


}
