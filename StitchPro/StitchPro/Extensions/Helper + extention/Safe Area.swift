//
//  Safe Area.swift
//  DownTown Slice
//
//  Created by Noman Umar on 9/13/19.
//  Copyright © 2019 tektiks inovation. All rights reserved.
//

import Foundation

import UIKit


var hasSafeArea: Bool {
    guard #available(iOS 11.0, *), let topPadding = UIApplication.shared.keyWindow?.safeAreaInsets.top, topPadding > 24 else {
        return false
    }
    return true
}
