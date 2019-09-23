//
//  AnimationViewController.swift
//  AndersenTest
//
//  Created by admin on 23.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit


class AnimationViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var widthGreenViewConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layoutIfNeeded()
        createGreenViewConstraint()
    }
    
    func createGreenViewConstraint() {
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @IBAction func didTapAnimateViewButton(_ sender: UIButton) {
//        UIView.animate(withDuration: 3.0, animations: {
//            //self.widthGreenViewConstraint.priority = UILayoutPriority(1000)
//            self.greenView.widthAnchor.constraint(equalToConstant: 100)
//            self.greenView.center = self.view.center
////            self.greenView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
////            self.greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        }, completion: nil)
        UIView.animate(withDuration: 3.0, animations: {
            self.greenView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/2).isActive = false
            self.greenView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 100).isActive = true
        }, completion: nil)
    }
}
