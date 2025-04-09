//
//  CartAmountButtonView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 22/12/2024.
//

import SwiftUI

struct CartAmountButtonView: View {
    @State private var cartCount = 1
    
    var body: some View {
        HStack(spacing: 16) {
            Button {
                withAnimation(.easeInOut) {
                    if cartCount != 1 {
                        cartCount -= 1
                    }
                }
            } label: {
                Image(systemName: "minus")
            }
            Text("\(cartCount)")
                .foregroundStyle(Color(.label))
            Button {
                withAnimation(.easeInOut) {
                    if cartCount <= 4 {
                        cartCount += 1
                    }
                }
            } label: {
                Image(systemName: "plus")
            }
        }
        .font(.system(size: 18))
        .foregroundStyle(Color("prime"))
        .padding()
        .overlay(Rectangle().stroke(lineWidth: 1).fill(Color("background")))
    }
}

#Preview {
    CartAmountButtonView()
}
