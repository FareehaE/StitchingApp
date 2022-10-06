//
//  placeHolderColor.swift
//  Airizo
//
//  Created by Noman Umar on 8/21/19.
//  Copyright © 2019 Noman Umar. All rights reserved.
//

import Foundation
import  UIKit



extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
