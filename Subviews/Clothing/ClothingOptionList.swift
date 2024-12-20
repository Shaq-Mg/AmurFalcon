//
//  ClothingOptionList.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import SwiftUI

struct ClothingOptionList: View {
    @Binding var seletedOption: ClothingBarOptions
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(ClothingBarOptions.allCases, id: \.self) { item in
                    VStack {
                        Text(item.title)
                            .foregroundStyle(item == seletedOption ? .background : .prime)
                        
                        Capsule()
                            .fill(item == seletedOption ? Color("background") : .clear)
                            .frame(height: 3)
                            .padding(.horizontal, -10)
                        
                    }
                    .onTapGesture {
                        self.seletedOption = item
                    }
                }
            }
        }
    }
}

#Preview {
    ClothingOptionList(seletedOption: .constant(.knitwear))
}
