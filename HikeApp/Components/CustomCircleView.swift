//
//  CustomCircleView.swift
//  HikeApp
//
//  Created by MarkFathy on 17/10/2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    .linearGradient(
                        colors: [
                            .colorIndigoMedium,
                            .colorSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(
                        .linear(duration: 3.0)
                        .repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle() // toggle method will switch the varibale's value from false to true when the circle view is presented on the screen
                    }
                }
            MotionAnimationView()
        } // : ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
