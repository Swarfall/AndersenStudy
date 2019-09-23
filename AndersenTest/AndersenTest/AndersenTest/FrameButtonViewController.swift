//
//  FrameButtonViewController.swift
//  AndersenTest
//
//  Created by admin on 9/21/19.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class FrameButtonViewController: UIViewController {

    var frameButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        frameButton.frame = CGRect(x: 50, y: 50, width: view.frame.size.width / 5, height: view.frame.size.height / 4)
        frameButton.backgroundColor = .red
        view.addSubview(frameButton)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
