//
//  AccessoriesOptionList.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct AccessoriesOptionList: View {
    @Binding var seletedOption: AccessorieBarOptions
    @Binding var currentOption: AccessorieBarOptions
    @Namespace var namespace
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(AccessorieBarOptions.allCases, id: \.self) { option in
                        VStack {
                            Text(option.title)
                                .foregroundStyle(option == currentOption ? .background : .prime)
                            
                            if option == currentOption {
                                Capsule()
                                    .fill(Color("background"))
                                    .matchedGeometryEffect(id: "accessorie", in: namespace)
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
                        .frame(width: UIScreen.main.bounds.width / 3.5)
                    }
                }
            }
            .onChange(of: currentOption) { _, _ in
                proxy.scrollTo(currentOption, anchor: .topTrailing)
            }
        }
    }
}

#Preview {
    AccessoriesOptionList(seletedOption: .constant(.headwear), currentOption: .constant(.headwear))
}
