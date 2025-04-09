//
//  ShopView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct ShopView: View {
    @Binding var isMenuShowing: Bool
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.init(white: 0.95).ignoresSafeArea()
            ShopHeaderView(isMenuShowing: $isMenuShowing)
            .padding(.horizontal)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 32) {
                    ForEach(0..<8) { item in
                        VStack(alignment: .leading, spacing: 6) {
                            TabView {
                                ForEach(0...3, id: \.self) { image in
                                    Rectangle()
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width / 2.5, height: 220)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .tabViewStyle(.page)
                            Text("Jacket 340".uppercased())
                            
                            Text("£280.00")
                                .font(.caption)
                        }
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.top, 64)
        }
    }
}

#Preview {
    ShopView(isMenuShowing: .constant(false))
}
