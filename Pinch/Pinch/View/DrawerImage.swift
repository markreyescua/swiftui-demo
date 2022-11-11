//
//  DrawerImage.swift
//  Pinch
//
//  Created by Mark Cua on 10/20/22.
//

import SwiftUI

struct DrawerImage: View {
    
    let page: Page
    let handler: (Int) -> Void
    
    var body: some View {
        Image(page.thumbnail)
            .resizable()
            .scaledToFit()
            .frame(width: 80)
            .cornerRadius(8)
            .shadow(radius: 4)
            .onTapGesture(perform: {
                handler(page.id)
            })
    }
}

struct DrawerImage_Previews: PreviewProvider {
    static var previews: some View {
        DrawerImage(page: pagesData[0], handler: { page in
            
        })
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
