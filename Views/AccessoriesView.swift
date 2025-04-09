//
//  AccessoriesView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct AccessoriesView: View {
    @State private var selectedOption: AccessorieBarOptions = .headwear
    @State private var currentOption: AccessorieBarOptions = .headwear
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        VStack(spacing: 18) {
            ShopHeaderView(isMenuShowing: $isMenuShowing)
            AccessoriesOptionList(seletedOption: $selectedOption, currentOption: $currentOption)
                .overlay (
                    Divider()
                        .padding(.horizontal, 16), alignment: .bottom)
            
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(AccessorieBarOptions.allCases, id: \.self) { option in
                            AccessorieSectionView(currentOption: $currentOption, option: option)
                        }
                    }
                    .onChange(of: selectedOption) { _, _ in
                        withAnimation(.easeInOut) {
                            proxy.scrollTo(selectedOption, anchor: .topTrailing)
                        }
                    }
                }
                .coordinateSpace(name: "scroll")
            }
        }
        .padding(.horizontal)
        .background(Color.init(white: 0.95))
    }
}

#Preview {
    AccessoriesView(isMenuShowing: .constant(false))
}
