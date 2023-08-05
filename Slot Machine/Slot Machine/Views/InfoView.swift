//
//  InfoView.swift
//  Slot Machine
//
//  Created by Aaron Wells on 8/3/23.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()

            Spacer()

            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Aaron Wells")
                    FormRowView(firstItem: "Copyright", secondItem: "© 2023 All rights reserved.")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                }
            } //: FORM
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button {
                self.presentationMode.wrappedValue.dismiss()
                audioPlayer?.stop()
            } label: {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(Color.secondary),

            alignment: .topTrailing
        )
        .onAppear {
            playSound(sound: "background-music", type: "mp3")
        }
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    var body: some View {
        HStack {
            Text(firstItem).foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
