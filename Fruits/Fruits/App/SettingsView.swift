//
//  SettingsView.swift
//  Fruits
//
//  Created by Aaron Wells on 7/10/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false

    // MARK: - BODY

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1

                    GroupBox(
                        label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including postassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } //: BOX

                    // MARK: - SECTION 2

                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text(
                            "If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again."
                        )
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    // MARK: - SECTION 3

                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Aaron Wells")
                        SettingsRowView(name: "Designer", content: "Aaron Wells")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Github", linkLabel: "SourceCode", linkDestination: "github.com/awells2399/iOS-Projects")
                        SettingsRowView(name: "Twitter", linkLabel: "@Bean_BaGs23", linkDestination: "twitter.com/Bean_BaGs23")
                        SettingsRowView(name: "Threads", linkLabel: "@wells_fargo9", linkDestination: "threads.net")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")
                    } //: BOX
                } //: VSTACK
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
