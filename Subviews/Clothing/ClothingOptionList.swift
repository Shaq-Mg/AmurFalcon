//
//  ClothingOptionList.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import SwiftUI

struct ClothingOptionList: View {
    @Binding var seletedOption: ClothingBarOptions
    @Namespace var namespace
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(ClothingBarOptions.allCases, id: \.self) { option in
                        VStack {
                            Text(option.title)
                                .foregroundStyle(option == seletedOption ? .background : .prime)
                            
                            if option == seletedOption {
                                Capsule()
                                    .fill(Color("background"))
                                    .matchedGeometryEffect(id: "option", in: namespace)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            } else {
                                Capsule()
                                    .fill(.clear)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                self.seletedOption = option
                                proxy.scrollTo(option, anchor: .topTrailing)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ClothingOptionList(seletedOption: .constant(.knitwear))
}
