//
//  RootView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 09/04/2025.
//

import SwiftUI

struct RootView: View {
    @State private var isSeachViewHidden = true
    @State private var selectedTab = 0
    @State private var showMenu = false
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                HomeView(isShowMenu: $showMenu, isSeachViewHidden: $isSeachViewHidden)
                    .tag(0)
                
                ClothingView(isMenuShowing: $showMenu)
                    .tag(1)
                
                AccessoriesView(isMenuShowing: $showMenu)
                    .tag(2)
                ShopView(isMenuShowing: $showMenu)
                    .tag(3)
                
                AccountView(isSeachViewHidden: $isSeachViewHidden, isMenuShowing: $showMenu)
                    .tag(4)
            }
            if showMenu {
                MenuView(isSeachViewHidden: $isSeachViewHidden, isMenuShowing: $showMenu, selectedTab: $selectedTab)
            }
            
            if !isSeachViewHidden {
                withAnimation(.easeInOut) {
                    SearchBarView(isSeachViewHidden: $isSeachViewHidden)
                        .transition(.move(edge: .bottom))
                        .ignoresSafeArea(edges: .bottom)
                }
            }
        }
    }
}

#Preview {
    RootView()
}
