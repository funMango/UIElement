//
//  ColorView.swift
//  UIElement
//
//  Created by 이민호 on 12/18/23.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    
    var body: some View {
        Text("This is ColorView")
            .foregroundStyle(color)
    }
}

//#Preview {
//    ColorView()
//}
