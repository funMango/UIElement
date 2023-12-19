//
//  SubmitCheckMark.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct SubmitCheckMark: View {
    @State private var showCheckMark = -22
    private var color : Color = .green
    private var size: CGFloat = 25
    
    var animation : Animation {        
        .interpolatingSpring(stiffness: 170, damping: 15)
        .speed(0.6)
        .delay(0.8)
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color, lineWidth: 2)
                .frame(width: size, height: size, alignment: .center)
            Image(systemName: "checkmark")
                .font(.system(size: size - 8))
                .foregroundColor(color)
                .clipShape(Rectangle().offset(x: CGFloat(showCheckMark)))
        }
        .onAppear() {
            withAnimation(animation) {
                showCheckMark = 1
            }
        }
    }
}

#Preview {
    SubmitCheckMark()
}
