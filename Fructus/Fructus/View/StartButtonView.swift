//
//  StartButtonView.swift
//  Fructus
//
//  Created by Mark Cua on 11/11/22.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: Properties
    let handler: () -> Void

    // MARK: Body
    var body: some View {
        Button(action: {
            handler()
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}

// MARK: Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(handler: {
            print("start button clicked")
        })
            .previewLayout(.sizeThatFits)
    }
}
