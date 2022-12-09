//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Mark Edison Cua on 12/9/22.
//

import SwiftUI

struct SettingsLabelView: View {
    var title: String
    var image: String
    var body: some View {
        HStack {
            Text(title.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(title: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
