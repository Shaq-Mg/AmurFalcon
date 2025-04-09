//
//  RecommendedView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct RecommendedView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<4) { image in
                    VStack(alignment: .leading, spacing: 6) {
                        TabView {
                            ForEach(0...2, id: \.self) { image in
                                Rectangle()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 220, alignment: .leading)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .tabViewStyle(.page)
                        
                        Text("Jacket 340".uppercased())
                        
                        Text("£280.00")
                            .foregroundStyle(Color("theme"))
                            .font(.caption)
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    RecommendedView()
}
