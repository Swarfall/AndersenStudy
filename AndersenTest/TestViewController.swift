//
//  TestViewController.swift
//  AndersenTest
//
//  Created by admin on 9/21/19.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    

    var childView = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childView.frame = CGRect(x: 20, y: 0, width: 100, height: view.frame.size.height)
        childView.backgroundColor = .white
        view.addSubview(childView)
    }
    


    

}
