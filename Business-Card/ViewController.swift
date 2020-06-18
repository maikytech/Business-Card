//
//  ViewController.swift
//  Business-Card
//
//  Created by Maiqui Cedeño on 9/06/20.
//  Copyright © 2020 PosetoStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let profileImage = UIImageView()
    var constraintsToApply = [NSLayoutConstraint]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAndLoadImage(imageName: "profileMaiky")
        
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
    }
}

