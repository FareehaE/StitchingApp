//
//  label font size.swift
//  Airizo
//
//  Created by Noman Umar on 8/23/19.
//  Copyright © 2019 Noman Umar. All rights reserved.
//

import Foundation
import UIKit


extension UILabel {
    func setSizeFont (sizeFont: Double) {
        self.font =  UIFont(name: self.font.fontName, size: CGFloat(sizeFont))!
        self.sizeToFit()
    }
    
    func setBoldFont (sizeFont: Double) {
        self.font =  UIFont.boldSystemFont(ofSize: CGFloat(sizeFont))
        self.sizeToFit()
    }
    
    func setItalicFont (sizeFont: Double) {
        self.font =  UIFont.italicSystemFont(ofSize: CGFloat(sizeFont))
        self.sizeToFit()
    }
}
