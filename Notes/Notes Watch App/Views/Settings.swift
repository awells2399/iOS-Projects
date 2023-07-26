//
//  Settings.swift
//  Notes Watch App
//
//  Created by Aaron Wells on 7/25/23.
//

import SwiftUI

struct Settings: View {
    // MARK: - PROPERTIES

    @AppStorage("lineCount") var lineCount = 1
    @State private var value = 1.0

    // MARK: - FUNCTIONS

    func update() {
        lineCount = Int(value)
    }

    // MARK: - BODY

    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")

            Text("Lines: \(lineCount)")
                .fontWeight(.bold)

            Slider(value: Binding(get: {
                self.value
            }, set: { newValue in
                self.value = newValue
                self.update()
            }), in: 1 ... 4, step: 1)
                .accentColor(.accentColor)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
