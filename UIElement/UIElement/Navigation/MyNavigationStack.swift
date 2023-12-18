//
//  NavigationStack.swift
//  UIElement
//
//  Created by 이민호 on 12/18/23.
//

import SwiftUI

struct MyNavigationStack: View {
    @State var isPresent = false
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
                NavigationLink("Number", value: 10)
            }
            .navigationDestination(for: Color.self) { color in
                ColorView(color: color)
            }
            .navigationDestination(for: Int.self) { number in
                NumberView(number: number)
            }
            .navigationTitle("Colors")
        }
    }
}

#Preview {
    MyNavigationStack()
}
