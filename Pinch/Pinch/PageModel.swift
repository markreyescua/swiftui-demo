//
//  PageModel.swift
//  Pinch
//
//  Created by Mark Cua on 10/20/22.
//

import Foundation

struct Page : Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnail: String {
        return "thumb-" + imageName
    }
}
