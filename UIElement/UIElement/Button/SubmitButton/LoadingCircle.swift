//
//  LoadingCircle.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct LoadingCircle: View {
    @State private var isLoading = false
    private var size: CGFloat = 25
    
    private var animation: Animation {
        .easeInOut(duration: 0.3)
        .speed(0.3)
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(Color.green, lineWidth: 2)
            .frame(width: size, height: size)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .onAppear() {
                withAnimation(animation) {
                    self.isLoading = true
                }
            }
    }
}

#Preview {
    LoadingCircle()
}
