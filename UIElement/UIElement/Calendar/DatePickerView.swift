//
//  DatePickerView.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            Text("\(date)")
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
        }
        .padding()
    }
}

#Preview {
    DatePickerView()
}
