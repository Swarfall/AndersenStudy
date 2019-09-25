//
//  ExtensionViewController.swift
//  AndersenTest
//
//  Created by admin on 25.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class ExtensionViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapCheckTextButton(_ sender: Any) {
        if checkCountText(text: textField.text!) == true {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
    
    func checkCountText(text: String) -> Bool {
        return text.stringExt(s: text) ? true : false
    }
}
