//
//  ItemSelectionView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import SwiftUI

struct ItemSelectionView: View {
    let option: ClothingBarOptions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(option.title)
                .font(.title2.bold())
                .foregroundStyle(Color("prime"))
                .padding(.vertical)
            
            ForEach(option.items) { item in
                HStack(spacing: 16) {
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
                    Spacer()
                    
                    TabView {
                        ForEach(0...3, id: \.self) { image in
                            Rectangle()
                        }
                    }
                    .frame(width: 120, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .tabViewStyle(.page)
                }
                
                Divider()
            }
        }
    }
}

#Preview {
    ItemSelectionView(option: .hoodies)
}
