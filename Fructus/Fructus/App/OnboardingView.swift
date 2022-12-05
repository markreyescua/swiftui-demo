//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mark Cua on 11/11/22.
//

import SwiftUI

struct OnboardingView: View {

    // MARK: Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var fruits: [Fruit] = fruitsData

    // MARK: Body

    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item, fruitHandler: { fruit in
                    isOnboarding = false
                })
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
