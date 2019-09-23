//
//  AnimationViewController.swift
//  AndersenTest
//
//  Created by admin on 9/22/19.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animateView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func animateButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            self.animateView.backgroundColor = .brown
        }, completion: nil)
        
        UIView.animate(withDuration: 1, animations: {
            self.animateView.frame.size.width += 50
            self.animateView.frame.size.height += 50
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat] ,animations: {
            self.animateView.frame.origin.y -= 50
        }, completion: nil)
    }
}
