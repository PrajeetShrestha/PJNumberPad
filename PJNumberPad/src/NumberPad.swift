//
//  NumberPad.swift
//  Wiz
//
//  Created by Prajeet Shrestha on 1/20/17.
//  Copyright © 2017 Prajeet Shrestha. All rights reserved.
//

import UIKit

class NumberPad: NibLoadingView, NumberBoxDelegate {

    @IBOutlet var numberBoxes: [NumberBox]!
    weak var delegate:NumberBoxDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        for box in numberBoxes {
            box.delegate = self
        }
    }
    
    func tappedButtonWithIndex(index:Int) {
        if let d = delegate {
            d.tappedButtonWithIndex(index: index)
        }
    }
}
