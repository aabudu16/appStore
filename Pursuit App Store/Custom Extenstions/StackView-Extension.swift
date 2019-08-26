//
//  StackView-Extension.swift
//  Pursuit App Store
//
//  Created by Mr Wonderful on 8/24/19.
//  Copyright © 2019 Mr Wonderful. All rights reserved.
//


// extenstion for the UIStackView
import UIKit

extension UIView{
    func createStackView(objects:[UIView])-> UIStackView{
        
        let stackView = UIStackView(arrangedSubviews: objects)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 15
//        stackView.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        stackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return stackView
    }
}
