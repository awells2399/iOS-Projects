//
//  SettingsView.swift
//  Hike
//
//  Created by Aaron Wells on 7/5/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER

            Section {
                HStack {
                    Spacer()

                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))

                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))

                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }

                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))

                    Spacer()
                } //: HSTACK
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)

                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()

                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)

            // MARK: - SECTION: ICONS

            // MARK: - SECTION: ABOUT

            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            ) {
//                // 1. Basic Labeled Content
//                LabeledContent("Application", value: "Hike")

                // 2. Advanced Labeled Content
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTinitColor: .blue)

                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTinitColor: .red)

                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTinitColor: .orange)

                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTinitColor: .purple)

                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Aaron Wells", rowTinitColor: .mint)

                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Aaron Wells", rowTinitColor: .pink)

                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTinitColor: .indigo, rowLinkLabel: "Awells Designs", rowLinkDestination: "https://PersonalWebsite")
            } //: SECTION
        } //: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
