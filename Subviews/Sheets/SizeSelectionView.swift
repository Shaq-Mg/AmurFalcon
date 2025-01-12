//
//  SizeSelectionView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 22/12/2024.
//

import SwiftUI

struct SizeSelectionView: View {
    @Binding var show: Bool
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)
    
    var body: some View {
        VStack(spacing: 18) {
            sizeHeader
                .padding(.top)
            Divider()
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(0..<8) { item in
                    Text("UK M")
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
        }
        .padding(.horizontal)
        .frame(height: UIScreen.main.bounds.width / 2)
        .frame(maxWidth: .infinity)
        .padding(.bottom, 44)
        .background(.white)
    }
}

#Preview {
    SizeSelectionView(show: .constant(false))
}

extension SizeSelectionView {
    private var sizeHeader: some View {
        HStack {
            Button("Cancel") {
                withAnimation(.spring) {
                    show.toggle()
                }
            }
            .font(.callout)
            .foregroundStyle(Color("icon"))
            
            Spacer()
            Text("Select Size")
                .font(.headline)
            Spacer()
            Text("      ")
        }
    }
}
