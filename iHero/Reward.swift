//
//  Reward.swift
//  iHero
//
//  Created by Lamia Aldossari on 20/02/2023.
//


import Foundation
import GoogleMobileAds

class Reward: NSObject, GADFullScreenContentDelegate, ObservableObject {
    @Published var rewardLoaded: Bool = false
    var rewardedAd: GADRewardedAd?

    override init() {
        super.init()
    }

    // リワード広告の読み込み
    func LoadReward() {
        GADRewardedAd.load(withAdUnitID: "ca-app-pub-3940256099942544/5224354917", request: GADRequest()) { (ad, error) in
            if let _ = error {
                print("😭:Error loading ad")
                self.rewardLoaded = false
                return
            }
            print("😍:Ad uploaded successfully")
            self.rewardLoaded = true
            self.rewardedAd = ad
            self.rewardedAd?.fullScreenContentDelegate = self
        }
    }

    // リワード広告の表示
    func ShowReward() {
        let root = UIApplication.shared.windows.first?.rootViewController
        if let ad = rewardedAd {
            ad.present(fromRootViewController: root!, userDidEarnRewardHandler: {
                print("😍:reward ad")
                self.rewardLoaded = false
            })
        } else {
            print("😭:The advertisement was not ready")
            self.rewardLoaded = false
            self.LoadReward()
        }
    }
}
