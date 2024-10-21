//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by MarkFathy on 16/10/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color(Color.customGreenDark)
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            
            Color(Color.customGreenLight)
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1 SURFACE
            
            LinearGradient(
                colors: [
                    Color(Color.customGreenLight),
                    Color(Color.customGreenMedium)],
                           startPoint: .top,
                           endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
