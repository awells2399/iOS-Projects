//
//  PageModel.swift
//  Pinch
//
//  Created by Aaron Wells on 6/29/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
