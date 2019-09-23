//
//  BViewController.swift
//  AndersenTest
//
//  Created by admin on 9/18/19.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var value = 0
    var even = true
    
    var countClosure: ((_ tap: Int, _ doubles: Bool) -> (Void))?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapGoToPopVCButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didTapAddScoreButton(_ sender: Any) {
        value += 1
        
        guard let closure = countClosure else { return }
        closure(value, value % 2 == 0)
    }
}
