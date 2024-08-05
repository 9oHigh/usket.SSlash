//
//  AppRadius.swift
//  SSlash
//
//  Created by 이경후 on 8/5/24.
//

import SwiftUI

enum AppRadius: CGFloat {
    
    case soft   = 4
    case medium = 8
    case hard   = 12

    var radius: RoundedRectangle {
        return .init(cornerRadius: self.rawValue)
    }
}

