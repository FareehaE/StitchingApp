//
//  Text Field Padding.swift
//  Airizo
//
//  Created by Noman Umar on 10/4/19.
//  Copyright © 2019 Noman Umar. All rights reserved.
//

import Foundation
import UIKit


extension UITextView {
    func leftSpace() {
        self.textContainerInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}
