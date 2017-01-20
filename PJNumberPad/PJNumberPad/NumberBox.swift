//
//  NumberBox.swift
//  Wiz
//
//  Created by Prajeet Shrestha on 1/20/17.
//  Copyright © 2017 Prajeet Shrestha. All rights reserved.
//

import UIKit

@objc protocol NumberBoxDelegate {
    func tappedButtonWithIndex(index:Int)
}

class NumberBox: NibLoadingView {
    @IBOutlet weak var lblNum: UILabel!
    weak var delegate:NumberBoxDelegate?
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var numValue: Int = 0 {
        didSet {
            if numValue == 10 {
                self.lblNum.text = "C"
            } else if numValue == 11 {
                self.lblNum.text = "D"
            } else {
                self.lblNum.text = "\(numValue)"
            }
            
//            let numStyle = NumberColor(num: numValue)
//            self.view.backgroundColor = numStyle.backgroundColor
//            self.lblNum.textColor = numStyle.textColor
        }
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        if let d = self.delegate {
            d.tappedButtonWithIndex(index: self.numValue)
        }
    }
}
