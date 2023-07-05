//
//  CustomCircleView.swift
//  Hike
//
//  Created by Aaron Wells on 7/5/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient = false

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight,
                        ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }

            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
