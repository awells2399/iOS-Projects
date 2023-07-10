//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Aaron Wells on 7/10/23.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES

    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    // MARK: - BODY

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Aaron Wells")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()

            SettingsRowView(name: "Some Link", linkLabel: "google", linkDestination: "google.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
