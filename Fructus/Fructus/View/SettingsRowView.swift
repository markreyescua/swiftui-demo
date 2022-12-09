//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Mark Edison Cua on 12/9/22.
//

import SwiftUI

struct SettingsRowView: View {
    var title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title).foregroundColor(Color.gray)
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Developer", content: "Mark cua")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(title: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
