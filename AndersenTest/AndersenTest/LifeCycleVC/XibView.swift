//
//  XibView.swift
//  AndersenTest
//
//  Created by admin on 24.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class XibView: UIView {

    @IBOutlet weak var textLabel: UILabel!
    
    var textLabelText: String {
        get {
            return textLabel.text!
        }
        set(textLabelText) {
            textLabel.text = textLabelText
        }
    }
    
    var view: UIView!
    var nibName: String = "XibView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
}
