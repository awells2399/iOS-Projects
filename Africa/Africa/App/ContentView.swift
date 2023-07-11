//
//  ContentView.swift
//  Africa
//
//  Created by Aaron Wells on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: LINK
                } //: LOOP
            } //: LIST
            .navigationTitle("Africa")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
