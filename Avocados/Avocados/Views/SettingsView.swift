//
//  SettingsView.swift
//  Avocados
//
//  Created by Aaron Wells on 7/27/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES

    @State private var enableNotification = true
    @State private var backgroundRefresh = false

    // MARK: - BODY

    var body: some View {
        // MARK: - HEADER

        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)

                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()

            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifications")
                    }

                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }

                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }

                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }

                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Aaron Wells")
                        }

                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Aaron Wells")
                        }

                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
