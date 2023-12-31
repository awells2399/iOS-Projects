//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Aaron Wells on 7/19/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            } //: BUTTON

            Spacer()

            Button {} label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            } //: Button
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
