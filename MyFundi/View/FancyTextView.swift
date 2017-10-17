//
//  FancyTextView.swift
//  MyFundi
//
//  Created by Ivy JianG on 10/15/17.
//  Copyright © 2017 Bachmanity. All rights reserved.
//

import UIKit

class FancyTextView: UITextView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(displayP3Red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5.0
        layer.borderColor = UIColor.lightGray.cgColor
    }

}
