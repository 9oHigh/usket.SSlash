//
//  AppColor.swift
//  SSlash
//
//  Created by 이경후 on 8/5/24.
//

import SwiftUI

enum AppColor: String {
    case text = "nomal_text"
    case buttonText = "button_text"
    case nomalBackground = "nomal_background"
    case buttonBackground = "button_background"
    
    var color: Color {
        return .init(
            uiColor: UIColor(named: self.rawValue)!
        )
    }
}
