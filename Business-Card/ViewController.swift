//
//  ViewController.swift
//  Business-Card
//
//  Created by Maiqui Cedeño on 9/06/20.
//  Copyright © 2020 PosetoStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let namePerson = UILabel()
    let profileImage = UIImageView()
    var constraintsToApply = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAndLoadImage(imageName: "profileMaiky")
        self.view.layoutIfNeeded()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        NSLayoutConstraint.activate(constraintsToApply)
    }
    
    func createAndLoadImage(imageName : String) {
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.image = UIImage(named: imageName)
        profileImage.contentMode = UIView.ContentMode.scaleAspectFill
        profileImage.clipsToBounds = true
        self.view.addSubview(profileImage)
        
        let centerXConstraint = profileImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraint = profileImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        let withConstraint = profileImage.widthAnchor.constraint(equalToConstant: 175)
        let heightConstraint = profileImage.heightAnchor.constraint(equalToConstant: 175)
        
        constraintsToApply.append(centerXConstraint)
        constraintsToApply.append(centerYConstraint)
        constraintsToApply.append(withConstraint)
        constraintsToApply.append(heightConstraint)
        
        profileImage.layer.cornerRadius = withConstraint.constant / 2.0
    }
    
    func nameLabelConfiguration(name: String) {
        
        namePerson.text = name
        namePerson.textColor = UIColor.black
        namePerson.translatesAutoresizingMaskIntoConstraints = false
        namePerson.textAlignment = NSTextAlignment.center
        namePerson.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(namePerson)
        
        let leadingConstraint = namePerson.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = namePerson.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0)
        let topConstraint = namePerson.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8)
        let heightConstraint = namePerson.heightAnchor.constraint(equalToConstant: 25)
    }
}

