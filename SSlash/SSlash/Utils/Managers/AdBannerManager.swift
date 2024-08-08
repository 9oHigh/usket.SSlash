//
//  File.swift
//  SSlash
//
//  Created by 이경후 on 8/7/24.
//

import SwiftUI
import Combine

class AdBannerManager {
    
    static let shared = AdBannerManager()
    let adBannerView = AdBannerView()
    
    func updateAdBannerView() {
        adBannerView.reloadBanner()
    }
}
