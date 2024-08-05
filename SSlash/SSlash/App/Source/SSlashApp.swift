//
//  SSlashApp.swift
//  SSlash
//
//  Created by 이경후 on 7/23/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct SSlashApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        setNavigationBarAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
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
