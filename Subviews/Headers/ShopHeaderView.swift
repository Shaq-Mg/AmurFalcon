//
//  ShopHeaderView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import SwiftUI

struct ShopHeaderView: View {
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        HStack(spacing: 12) {
            AnimatedMenuView(isMenuShowing: $isMenuShowing)
            Spacer()
            Text("AMUR FALCON")
            Spacer()
            Image(systemName: "bag")
        }
        .font(.system(size: 24, weight: .semibold))
    }
}

#Preview {
    ShopHeaderView(isMenuShowing: .constant(false))
}
