//
//  textView Padding.swift
//  Airizo
//
//  Created by Noman Umar on 8/29/19.
//  Copyright © 2019 Noman Umar. All rights reserved.
//

import Foundation
import UIKit


class UITextViewPadding : UITextView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        textContainerInset = UIEdgeInsets(top: 8, left: 15, bottom: 8, right: 4)
    }
}
