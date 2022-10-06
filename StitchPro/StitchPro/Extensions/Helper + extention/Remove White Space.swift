//
//  remove whiteSpace.swift
//  Airizo
//
//  Created by Noman Umar on 9/5/19.
//  Copyright © 2019 Noman Umar. All rights reserved.
//

import Foundation


extension String {
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}
