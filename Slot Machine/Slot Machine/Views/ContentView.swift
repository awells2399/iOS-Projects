//
//  ContentView.swift
//  Slot Machine
//
//  Created by Aaron Wells on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        ZStack {
            // MARK: - BACKGROUND

            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            // MARK: - INTERFACE

            VStack(alignment: .center, spacing: 5) {
                // MARK: - HEADER

                LogoView()

                Spacer()

                // MARK: - SCORE

                HStack {
                    HStack {
                        Text("Your \nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)

                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifer())
                    }
                    .modifier(ScoreContainerModifier())

                    Spacer()

                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifer())

                        Text("High \nScore".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }

                // MARK: - SLOT MACHINE

                // MARK: - FOOTER

                Spacer()
            } //: VSTACK

            // MARK: - BUTTONS

            .overlay(
                // RESET
                Button {
                    print("Reset the game")
                } label: {
                    Image(systemName: "arrow.2.circlepath.circle")
                }
                .modifier(ButtonModifier()),
                alignment: .topLeading
            )

            .overlay(
                // Info
                Button {
                    print("Info View")
                } label: {
                    Image(systemName: "info.circle")
                }
                .modifier(ButtonModifier()),
                alignment: .topTrailing
            )

            .padding()
            .frame(maxWidth: 720)

            // MARK: - POPUP
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}