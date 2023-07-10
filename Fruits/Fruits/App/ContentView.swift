//
//  ContentView.swift
//  Fruits
//
//  Created by Aaron Wells on 7/6/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    @State private var isShowingSettings = false
    var fruits: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
