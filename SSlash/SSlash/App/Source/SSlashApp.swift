//
//  SSlashApp.swift
//  SSlash
//
//  Created by 이경후 on 7/23/24.
//

import SwiftUI

@main
struct SSlashApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        setNavigationBarAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationStack {
                    HomeScreen(store: .init(initialState: HomeCore.State(), reducer: {
                        HomeCore()
                    }))
                }
                
                VStack {
                    Spacer()
                    // MARK: - Need height values in proportion
                    AdBannerManager.shared.adBannerView
                            .frame(width: UIScreen.main.bounds.width, height: 50)
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

extension SSlashApp {
    
    private func setNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(AppColor.nomalBackground.color)
        appearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
