//
//  HomeView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var isSeachViewHidden = true
    @State private var selectedTab = 0
    @State private var isShowMenu = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 14) {
                ScrollView(.vertical, showsIndicators: false) {
                    Text("Free worldwide delivery over £200".uppercased())
                        .font(.headline)
                        .foregroundStyle(Color("theme"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("prime"))
                    
                    
                    MenuHeaderView(isSeachViewHidden: $isSeachViewHidden, isMenuShowing: $isShowMenu)
                        .padding(.horizontal)
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 1.5)
                    
                    Text("Recommended")
                        .font(.system(size: 25, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 24)
                        .padding(.leading)
                    
                    RecommendedView()
                        .padding(.leading)
                }
            }
            if isShowMenu {
                MenuView(isSeachViewHidden: $isSeachViewHidden, isMenuShowing: $isShowMenu, selectedTab: $selectedTab)
                    .transition(.move(edge: .bottom))
                    .ignoresSafeArea(edges: .bottom)
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
    NavigationStack {
        HomeView()
    }
}
