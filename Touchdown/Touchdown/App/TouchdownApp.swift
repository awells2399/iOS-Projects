//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Aaron Wells on 7/17/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
