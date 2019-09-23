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
     
    }
    
    
    @IBAction func didTapAnimateViewButton(_ sender: UIButton) {
        widthGreenViewConstraint.constant = 10
        UIView.animate(withDuration: 3.0, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
