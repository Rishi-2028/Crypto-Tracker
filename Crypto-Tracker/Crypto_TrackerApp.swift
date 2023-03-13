//
//  Crypto_TrackerApp.swift
//  Crypto-Tracker
//
//  Created by Rishi on 12/03/2023.
//

import SwiftUI

@main
struct Crypto_TrackerApp: App {
    
    @StateObject private  var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
           
        }
    }
}
