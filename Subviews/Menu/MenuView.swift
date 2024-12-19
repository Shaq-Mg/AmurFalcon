//
//  SideMenuView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct MenuView: View {
    @State private var selectedOption: Page? = nil
    @Binding var isMenuShowing: Bool
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            if isMenuShowing {
                Rectangle()
                    .foregroundStyle(.ultraThinMaterial)
                    .ignoresSafeArea()
                    .onTapGesture { isMenuShowing.toggle() }
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        menuHeader
                        VStack {
                            
                        }
                        ForEach(Page.allCases) { page in
                            Button {
                                selectedOption = page
                                selectedTab = page.rawValue
                                isMenuShowing = false
                            } label: {
                                Text(page.title)
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isMenuShowing)
    }
}

#Preview {
    MenuView(isMenuShowing: .constant(true), selectedTab: .constant(0))
}

extension MenuView {
    private var menuHeader: some View {
        VStack {
            HStack(spacing: 16) {
                AnimatedMenuView(isMenuShowing: $isMenuShowing)
                
                Text("Amur falcon".uppercased())
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            Divider()
        }
    }
}

