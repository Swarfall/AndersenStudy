//
//  ConstraintViewController.swift
//  AndersenTest
//
//  Created by admin on 23.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class ConstraintViewController: UIViewController {

    let viewGrey: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(viewGrey)
        createViewWhiteConstraint()
    }
    
    func createViewWhiteConstraint() {
        viewGrey.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewGrey.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        viewGrey.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewGrey.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
