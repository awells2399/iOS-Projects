//
//  VideoListView.swift
//  Africa
//
//  Created by Aaron Wells on 7/10/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES

    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                } //: LOOP
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Shuffle videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
