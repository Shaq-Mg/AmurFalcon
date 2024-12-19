//
//  HomeHeaderView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var isSeachViewHidden: Bool
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        HStack(spacing: 12) {
            AnimatedMenuView(isMenuShowing: $isMenuShowing)
            Spacer()
            Text("AMUR FALCON")
            Spacer()
            Image(systemName: "magnifyingglass")
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isSeachViewHidden.toggle()
                    }
                }
            Image(systemName: "bag")
        }
        .padding(.horizontal)
        .font(.system(size: 24, weight: .semibold))
    }
}

#Preview {
    HomeHeaderView(isSeachViewHidden: .constant(true), isMenuShowing: .constant(false))
}
