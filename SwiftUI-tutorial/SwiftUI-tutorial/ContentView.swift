//
//  ContentView.swift
//  SwiftUI-tutorial
//
//  Created by Mark Cua on 10/10/22.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifer() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        // MARK: -1. Basic + Scaling
        // AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
        // MARK: -2. Placeholder
        //        AsyncImage(url: URL(string: imageUrl), scale: 3.0) { image in
        //            image.imageModifier()
        //        } placeholder: {
        //            Image(systemName: "photo.circle.fill").iconModifer()
        //        }
        //        .padding(40)
        
        // MARK: -3 Phase
        //        AsyncImage(url: URL(string: imageUrl)) { phase in
        //            // SUCCESS:
        //            // FAIL:
        //            // EMPTY:
        //            if let image = phase.image {
        //                image.imageModifier()
        //            } else if phase.error != nil {
        //                Image(systemName: "ant.circle.fill").iconModifer()
        //            } else {
        //                Image(systemName: "photo.circle.fill").iconModifer()
        //            }
        //        }
        //        .padding(40)
        
        AsyncImage(
            url: URL(string: imageUrl),
            transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))
        ) { phase in
            switch phase {
                case .success(let image):
                    image
                        .imageModifier()
//                        .transition(.move(edge: .bottom))
//                        .transition(.slide)
                        .transition(.scale)
                case .failure(_):
                    Image(systemName: "ant.circle.fill").iconModifer()
                case .empty:
                    Image(systemName: "photo.circle.fill").iconModifer()
                @unknown default:
                    ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
