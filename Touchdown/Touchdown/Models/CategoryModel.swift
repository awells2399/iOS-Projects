//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Aaron Wells on 7/18/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
