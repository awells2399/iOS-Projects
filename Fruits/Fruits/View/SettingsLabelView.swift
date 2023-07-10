//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Aaron Wells on 7/10/23.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES

    var labelText: String
    var labelImage: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruit", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
