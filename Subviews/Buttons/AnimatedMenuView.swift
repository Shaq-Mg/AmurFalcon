//
//  AnimatedMenuView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct AnimatedMenuView: View {
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        VStack(spacing: 6) {
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 32, height: 4)
                .rotationEffect(Angle(degrees: isMenuShowing ? 40 : 0 ), anchor: .leading)
            
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 32, height: 4)
                .scaleEffect(x: isMenuShowing ? 0 : 1,
                             y: isMenuShowing ? 0 : 1,
                             anchor: .leading)
                .opacity(isMenuShowing ? 0 : 1)
            
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 32, height: 4)
                .rotationEffect(Angle(degrees: isMenuShowing ? -40 : 0 ), anchor: .leading)
        }
        .foregroundStyle(Color("prime"))
        .onTapGesture {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
                isMenuShowing.toggle()
            }
        }
    }
}

#Preview {
    AnimatedMenuView(isMenuShowing: .constant(false))
}
