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
                .font(.title.bold())
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
                    }
                    Spacer()
                    
                    Image(systemName: item.imageName)
                        .font(.system(size: 78))
                }
                
                Divider()
            }
        }
    }
}

#Preview {
    ItemSelectionView(option: .hoodies)
}
