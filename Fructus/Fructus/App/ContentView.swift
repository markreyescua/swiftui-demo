//
//  ContentView.swift
//  Fructus
//
//  Created by Mark Cua on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: Body
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { item in
                NavigationLink(destination: FruitDetailsView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits List")
            .navigationBarItems(
                leading:
                    Image(systemName: "chevron.backward")
                    .onTapGesture(perform: {
                        isOnboarding = true
                    }),
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
            .navigationBarTitleDisplayMode(.automatic)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
