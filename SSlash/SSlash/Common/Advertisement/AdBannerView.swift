//
//  AdBannerViewContainer.swift
//  SSlash
//
//  Created by 이경후 on 8/6/24.
//

import SwiftUI
import GoogleMobileAds
import AppTrackingTransparency
import AdSupport

protocol BannerViewDelegate: AnyObject {
    func reloadBanner()
}

struct AdBannerView: UIViewControllerRepresentable {
    
    @State var viewWidth: CGFloat = UIScreen.main.bounds.width
    private let bannerView = GADBannerView()
    private var adUnitID: String {
        return Bundle.main.object(forInfoDictionaryKey: "AdMobAdUnitID") as? String ?? ""
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let bannerViewController = AdBannerViewController()
        bannerView.rootViewController = bannerViewController
        bannerView.adUnitID = adUnitID
        bannerView.adSize = GADCurrentOrientationInlineAdaptiveBannerAdSizeWithWidth(viewWidth)
        bannerView.load(GADRequest())
        bannerViewController.view.addSubview(bannerView)
        
        return bannerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        guard viewWidth != .zero else { return }
        bannerView.adSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(viewWidth)
        bannerView.load(GADRequest())
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func reloadBanner() {
        bannerView.load(GADRequest())
    }

    class Coordinator: NSObject, BannerViewDelegate {
        var parent: AdBannerView
        
        init(parent: AdBannerView) {
            self.parent = parent
        }
        
        func reloadBanner() {
            parent.reloadBanner()
        }
    }
}
