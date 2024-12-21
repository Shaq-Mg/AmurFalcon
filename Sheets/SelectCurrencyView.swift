//
//  SelectCurrencyView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Binding var show: Bool
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)
    
    var body: some View {
        VStack(spacing: 18) {
            Divider()
            currencyHeader
                .padding(.bottom)
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(0..<8) { item in
                    Text("GBP £")
                        .fontWeight(.semibold)
                        .padding()
                        .overlay(Rectangle().stroke(lineWidth: 1))
                        .frame(width: UIScreen.main.bounds.width / 5)
                        .padding(.horizontal)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                show.toggle()
                            }
                        }
                }
            }
            Text("Currency: £ GBP")
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .background(.white)
    }
}

#Preview {
    SelectCurrencyView(show: .constant(false))
}

extension SelectCurrencyView {
    private var currencyHeader: some View {
        HStack {
            Button("Cancel") {
                withAnimation(.easeInOut) {
                    show.toggle()
                }
            }
            .font(.callout)
            .foregroundStyle(Color("icon"))
            
            Spacer()
            Text("Chose Currency")
                .font(.headline)
            Spacer()
            Text("      ")
        }
    }
}
