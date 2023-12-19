//
//  SubmitButton.swift
//  UIElement
//
//  Created by 이민호 on 12/19/23.
//

import SwiftUI

enum SubmitBtnState: String {
    case loading = "Loading"
    case submit = "Submit"
    case complete = "Complete"
}

struct SubmitButton: View {
    @State var width: CGFloat = 120
    @State var state: SubmitBtnState = .submit
    
    var animation : Animation {
        .easeOut(duration: 0.3)
    }
    
    var body: some View {
        VStack {
            Button {
                withAnimation(animation) {
                    submitBtnTapped()
                }
            } label: {
                HStack {
                    switch self.state {
                    case .loading:
                        LoadingCircle()
                        Spacer()
                    case .complete:
                        SubmitCheckMark()
                        Spacer()
                    case .submit:
                        Text("")
                    }
               
                    Text(state.rawValue)
                        .foregroundStyle(.white)
                }
                .padding()
            }
            .frame(width: self.width, height: 50, alignment: .center)
            .background(.orange)
            .cornerRadius(25)
            
            
            
            Button {
                withAnimation(animation) {
                    self.state = .complete
                }
            } label: {
                Text("complete")
            }
            .padding(.top, 20)
        }
    }
}

extension SubmitButton {
    func submitBtnTapped() {
        self.width = 150
        self.state = .loading
    }
}

#Preview {
    SubmitButton()
}
