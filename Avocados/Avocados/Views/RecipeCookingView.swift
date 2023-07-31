//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Aaron Wells on 7/31/23.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES

    var recipe: Recipe

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }

            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.serves)")
            }

            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.serves)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

// MARK: - PREVIEW

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[3])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
