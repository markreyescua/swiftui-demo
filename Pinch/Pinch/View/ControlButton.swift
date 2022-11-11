//
//  ControlButton.swift
//  Pinch
//
//  Created by Mark Cua on 10/20/22.
//

import SwiftUI

struct ControlButton: View {
    let imageName: String
    let handler: () -> Void
    
    var body: some View {
        Button {
            handler()
        } label: {
            Image(systemName: imageName)
                .font(.system(size: 36))
        }
    }
}

struct ControlButton_Previews: PreviewProvider {
    static var previews: some View {
        ControlButton(imageName: "minus.magnifyingglass", handler: { })
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
