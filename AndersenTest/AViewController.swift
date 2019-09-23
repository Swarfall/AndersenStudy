//
//  ViewController.swift
//  AndersenTest
//
//  Created by admin on 9/18/19.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapGoToBVCButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        vc.countClosure = {(value, even) in

                print(even)
                print(value)
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

