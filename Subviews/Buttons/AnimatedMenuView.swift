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
        Button {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
                isMenuShowing.toggle()
            }
        } label: {
            VStack(spacing: 6) {
                roundedRect
                    .rotationEffect(Angle(degrees: isMenuShowing ? 40 : 0 ), anchor: .leading)
                
                roundedRect
                    .scaleEffect(x: isMenuShowing ? 0 : 1,
                                 y: isMenuShowing ? 0 : 1,
                                 anchor: .leading)
                    .opacity(isMenuShowing ? 0 : 1)
                
                roundedRect
                    .rotationEffect(Angle(degrees: isMenuShowing ? -40 : 0 ), anchor: .leading)
            }
            .foregroundStyle(Color("prime"))
        }
    }
}

#Preview {
    AnimatedMenuView(isMenuShowing: .constant(false))
}

extension AnimatedMenuView {
    private var roundedRect: some View {
        RoundedRectangle(cornerRadius: 4)
            .frame(width: 32, height: 4)
    }
}
