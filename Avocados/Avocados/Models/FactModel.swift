//
//  FactModel.swift
//  Avocados
//
//  Created by Aaron Wells on 7/31/23.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
