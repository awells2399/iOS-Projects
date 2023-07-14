//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Aaron Wells on 7/14/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal

    // MARK: - BODY

    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalGridItemView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
