//
//  SignUpButtonView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct SignUpButtonView: View {
    var body: some View {
        Text("Sign me up".uppercased())
            .fontWeight(.semibold)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 40)
            .frame(height: 36)
            .background(.white)
            .padding(.top, 18)
            .overlay(alignment: .topTrailing) {
                Image(systemName: "xmark.circle")
                    .fontWeight(.semibold)
            }
    }
}

#Preview {
    SignUpButtonView()
}
