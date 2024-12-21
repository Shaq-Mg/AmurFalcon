//
//  ClothingView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import SwiftUI

struct ClothingView: View {
    @State private var selectedOption: ClothingBarOptions = .basics
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        VStack(spacing: 18) {
            ShopHeaderView(isMenuShowing: $isMenuShowing)
            ClothingOptionList(seletedOption: $selectedOption)
                .overlay (
                    Divider()
                        .padding(.horizontal, 16), alignment: .bottom)
            
            ScrollView {
                ItemSelectionView(option: selectedOption)
            }
        }
        .padding(.horizontal)
        .background(Color.init(white: 0.95))
    }
}

#Preview {
    ClothingView(isMenuShowing: .constant(false))
}
