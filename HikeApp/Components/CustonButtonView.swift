//
//  CustonButtonView.swift
//  HikeApp
//
//  Created by MarkFathy on 16/10/2024.
//

import SwiftUI

struct CustonButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .white,
                        .customGreenLight,
                        .customGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
            Circle()
            .stroke(
                LinearGradient(
                colors: [
                    .customGrayLight,
                    .customGrayMedium],
                startPoint: .top,
                endPoint: .bottom),
                    lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle (
                    LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        } // : ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustonButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
