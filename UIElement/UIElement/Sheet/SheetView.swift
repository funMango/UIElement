//
//  SheetView.swift
//  UIElement
//
//  Created by 이민호 on 12/18/23.
//

import SwiftUI

struct SheetView: View {
    @State var isShownSheet = false
    
    var body: some View {
        Button {
            self.isShownSheet.toggle()
        } label: {
            Text("view up")
        }
        .sheet(isPresented: $isShownSheet) {
            Text("sheet view")
        }
    }
}

#Preview {
    SheetView()
}
