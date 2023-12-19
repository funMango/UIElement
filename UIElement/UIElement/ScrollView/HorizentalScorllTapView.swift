//
//  HorizentalScorllTapView.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct HorizentalScorllTapView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .indigo, .purple]
    @State private var selectedIndex: Int?

    var body: some View {
        VStack(alignment: .center) {
            ScrollViewReader { value in
                Button ("Move to #23") {
                    withAnimation {
                        value.scrollTo(23)
                        selectedIndex = 23
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 10) {
                        ForEach(0...50, id: \.self) { index in
                            Text("Item \(index)")
                                .font(.title)
                                .foregroundStyle(.white)
                                .frame(width: height(index: index), height: height(index: index)) // frame for selected
                                .background(colors[index % colors.count])
                                .cornerRadius(8)
                                .id(index)
                                .onTapGesture {
                                    withAnimation {
                                        selectedIndex = index
                                        value.scrollTo(index)
                                    }
                                }
                        }
                    }
                }.frame(height: 150)
                .padding()
            }
        }
    }
    
    func height(index: Int) -> CGFloat {
        return selectedIndex == index ? 120 : 100
    }
}

#Preview {
    HorizentalScorllTapView()
}
