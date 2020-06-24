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
    let jobTitle = UILabel()
    let phoneLabel = UILabel()
    let emailLabel = UILabel()
    let profileImage = UIImageView()
    var constraintsToApply = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAndLoadImage(imageName: "profileMaiky")
        nameLabelConfiguration(name: "Maiqui Cedeño")
        jobTitleLabelConfiguration(jobTitle: "iOS Developer")
        phoneLabelConfiguration(phone: "+57 3106769897")
        emaillabelConfiguration(email: "maikytech1307@gmail.com")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        NSLayoutConstraint.activate(constraintsToApply)
        self.view.layoutIfNeeded()
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
        
        namePerson.translatesAutoresizingMaskIntoConstraints = false
        namePerson.text = name
        namePerson.textColor = UIColor.black
        namePerson.textAlignment = NSTextAlignment.center
        namePerson.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(namePerson)
        
        let leadingConstraint = namePerson.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = namePerson.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = namePerson.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 58)
        let heightConstraint = namePerson.heightAnchor.constraint(equalToConstant: 25)
        
        constraintsToApply.append(leadingConstraint)
        constraintsToApply.append(trailingConstraint)
        constraintsToApply.append(topConstraint)
        constraintsToApply.append(heightConstraint)
    }
    
    func jobTitleLabelConfiguration(jobTitle: String) {
        
        self.jobTitle.translatesAutoresizingMaskIntoConstraints = false
        self.jobTitle.text = jobTitle
        self.jobTitle.textColor = UIColor.black
        self.jobTitle.textAlignment = NSTextAlignment.center
        self.jobTitle.font = UIFont(name: "Avenir Next", size: 25)
        self.view.addSubview(self.jobTitle)
        
        let leadingConstraint = self.jobTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = self.jobTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = self.jobTitle.topAnchor.constraint(equalTo: self.profileImage.bottomAnchor, constant: 50)
        let heightConstraint = self.jobTitle.heightAnchor.constraint(equalToConstant: 25)
        
        constraintsToApply.append(leadingConstraint)
        constraintsToApply.append(trailingConstraint)
        constraintsToApply.append(topConstraint)
        constraintsToApply.append(heightConstraint)
    }
    
    func phoneLabelConfiguration(phone: String) {
        
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.text = phone
        phoneLabel.textColor = UIColor.black
        phoneLabel.textAlignment = NSTextAlignment.left
        phoneLabel.font = UIFont(name: "Avenir Next", size: 15)
        self.view.addSubview(phoneLabel)
        
        let leadingConstraint = phoneLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
        let bottomConstraint = phoneLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        let widthConstraint = phoneLabel.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = phoneLabel.heightAnchor.constraint(equalToConstant: 20)
        
        constraintsToApply.append(leadingConstraint)
        constraintsToApply.append(bottomConstraint)
        constraintsToApply.append(widthConstraint)
        constraintsToApply.append(heightConstraint)
    }
    
    func emaillabelConfiguration(email: String) {
        
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = email
        emailLabel.textColor = UIColor.black
        emailLabel.textAlignment = NSTextAlignment.right
        emailLabel.font = UIFont(name: "Avenir Next", size: 15)
        self.view.addSubview(emailLabel)
        
        let trailingConstraint = emailLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
        let bottomConstraint = emailLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        let widthConstraint = emailLabel.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = emailLabel.heightAnchor.constraint(equalToConstant: 20)
        
        constraintsToApply.append(trailingConstraint)
        constraintsToApply.append(bottomConstraint)
        constraintsToApply.append(widthConstraint)
        constraintsToApply.append(heightConstraint)
    }
}

