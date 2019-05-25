//
//  RoundButton.swift
//  Shamaz
//
//  Created by Am GHAZNAVI on 21/05/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import UIKit

// Round edge buttons and change of colour when the buttons are disabled.

class ButtonPLUS: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
        layer.borderColor = isEnabled ? tintColor.cgColor: UIColor.lightGray.cgColor
        
    }
}
