//
//  FullSheetView.swift
//  UIElement
//
//  Created by 이민호 on 12/18/23.
//

import SwiftUI

struct FullSheetView: View {
    @State var isShownFullCover = false
    var body: some View {
        Button {
            self.isShownFullCover.toggle()
        } label: {
            Text("Show Full Screen Cover")
        }
        .fullScreenCover(isPresented: $isShownFullCover) {
            FullScreenCover(isShownFullScreenCover: $isShownFullCover)
        }
    }
}

#Preview {
    FullSheetView()
}
