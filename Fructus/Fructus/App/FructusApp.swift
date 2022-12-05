//
//  FructusApp.swift
//  Fructus
//
//  Created by Mark Cua on 11/11/22.
//

import SwiftUI

@main
struct FructusApp: App {

    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if(isOnboarding) {
                OnboardingView()
            } else {
                ContentView(fruits: fruitsData)
            }
        }
    }
}
