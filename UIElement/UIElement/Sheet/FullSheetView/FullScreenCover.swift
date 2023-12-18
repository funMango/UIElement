//
//  FullScreenCover.swift
//  UIElement
//
//  Created by 이민호 on 12/18/23.
//

import SwiftUI

struct FullScreenCover: View {
    @Binding var isShownFullScreenCover: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    self.isShownFullScreenCover.toggle()
                } label: {
                    Text("cancel")
                }
                Spacer()

            }
            .padding(.leading)
            
            Spacer()
            Text("Full Screen Cover")
            Spacer()
        }
    }
}

//#Preview {
//    FullScreenCover()
//}
