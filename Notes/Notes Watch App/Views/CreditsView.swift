//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Aaron Wells on 7/25/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(spacing: 3) {
            Image("profile-pic")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
                .cornerRadius(4)

            HeaderView(title: "Credits")

            Text("Aaron Wells")
                .foregroundColor(.primary)
                .fontWeight(.bold)

            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
