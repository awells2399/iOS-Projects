//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Aaron Wells on 7/25/23.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTIES

    let note: Note
    let count: Int
    let index: Int

    @State private var isCreditsPresented = false
    @State private var isSettingsPresented = false

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            HeaderView(title: "")
            Spacer()

            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }

            Spacer()

            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented) {
                        Settings()
                    }

                Spacer()

                Text("\(index + 1) / \(count)")

                Spacer()

                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented) {
                        CreditsView()
                    }
            } //: HSTACK
            .foregroundColor(.secondary)
        } //: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW

struct DetailView_Previews: PreviewProvider {
    static var sampleDate: Note = .init(id: UUID(), text: "Sample text for a quick note")
    static var previews: some View {
        DetailView(note: sampleDate, count: 5, index: 1)
    }
}
