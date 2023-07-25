//
//  Note.swift
//  Notes Watch App
//
//  Created by Aaron Wells on 7/25/23.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
