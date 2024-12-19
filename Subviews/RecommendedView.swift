//
//  RecommendedView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct RecommendedView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 12) {
                ForEach(0..<4) { image in
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 180, alignment: .leading)
                }
            }
        }
    }
}

#Preview {
    RecommendedView()
}
