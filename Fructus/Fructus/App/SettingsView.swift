//
//  SettingsView.swift
//  Fructus
//
//  Created by Mark Edison Cua on 12/9/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label: SettingsLabelView(title: "Fructus", image: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 90)
                                .cornerRadius(8)
                            Text("Most fruits are naturally low in fat, sodium and calories. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    // MARK: - Section 3
                    GroupBox(
                        label: SettingsLabelView(title: "Application", image: "apps.iphone")
                    ) {
                        SettingsRowView(title: "Developer", content: "Mark Cua")
                        SettingsRowView(title: "Designer", content: "Katherine Nguyen")
                        SettingsRowView(title: "Compatibility", content: "iOS 14")
                        SettingsRowView(title: "Website", linkLabel: "The Humble Developer", linkDestination: "thehumbledeveloper.com")
                        SettingsRowView(title: "Twitter", linkLabel: "@markreyescua", linkDestination: "twitter.com/markreyescua")
                        SettingsRowView(title: "SwiftUI", content: "2.0")
                        SettingsRowView(title: "Version", content: "1.1.0")
                    }
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
