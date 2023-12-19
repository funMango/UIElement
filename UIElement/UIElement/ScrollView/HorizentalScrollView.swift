//
//  HorizentalScrollView.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct HorizentalScrollView: View {
    @State private var selectedNum: Int?
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(1...12, id: \.self) { index in
                    Text("\(index)")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(width: 50, height: 50)
                        .background(selectColor(with: index))
                        .cornerRadius(50)
                        .onTapGesture {
                            selectedNum = index
                        }
                }
            }
        }
        .padding(20)
    }
    
    func selectColor(with index: Int) -> Color {
        if selectedNum == index {
            return .red
        }
        return .black
    }
}

#Preview {
    HorizentalScrollView()
}
