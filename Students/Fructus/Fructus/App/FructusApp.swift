//
//  FructusApp.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
            
            
        }
    }
}
