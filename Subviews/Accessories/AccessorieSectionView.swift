//
//  AccessorieSectionView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct AccessorieSectionView: View {
    @Binding var currentOption: AccessorieBarOptions
    let option: AccessorieBarOptions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(option.title)
                .font(.title2.bold())
                .foregroundStyle(Color("prime"))
                .padding(.vertical)
            
            ForEach(option.items) { item in
                HStack(spacing: 16) {
                    TabView {
                        ForEach(0...3, id: \.self) { image in
                            Rectangle()
                        }
                    }
                    .frame(width: 120, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .tabViewStyle(.page)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(item.title)
                            .font(.title3.bold())
                        
                        Text(item.description)
                            .font(.caption)
                            .foregroundStyle(Color("prime"))
                        
                        Text("Price: \(item.price)")
                            .font(.system(size: 14, weight: .semibold))
                        Spacer()
                    }
                }
                
                Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
    }
}

#Preview {
    AccessorieSectionView(currentOption: .constant(.headwear), option: .headwear)
}
