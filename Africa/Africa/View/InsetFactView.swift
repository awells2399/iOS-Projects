//
//  InsetFactView.swift
//  Africa
//
//  Created by Aaron Wells on 7/11/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

// MARK: - PREVIEW

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[7])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}