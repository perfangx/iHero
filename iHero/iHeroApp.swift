//
//  iHeroApp.swift
//  iHero
//
//  Created by roba on 07/02/2023.
//

import SwiftUI
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        return true
    }
}

@main
struct iHeroApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            //    QuizPage(gameManagerVM: GameManagerVM())
          //  Main( gameVM: GameManagerVM())
            SplashScreenView()
//            referencePage()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
