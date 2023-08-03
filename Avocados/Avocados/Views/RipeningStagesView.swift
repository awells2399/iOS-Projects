//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Aaron Wells on 7/27/23.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES

    var ripeningStages: [Ripening] = ripeningData

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
    }
}

// MARK: - PREVIEW

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
