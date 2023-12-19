//
//  SubmitIcon.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct SubmitIcon: View {
    var size : CGFloat?
    var color: Color?
    
    var body: some View {
        Image(systemName: "paperplane")
            .font(.system(size: self.size ?? 20))
            .foregroundColor(color ?? .black)
    }
}

#Preview {
    SubmitIcon(size: 18, color: .blue)
}
