//
//  HomeView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    @Binding var isShowMenu: Bool
    @Binding var isSeachViewHidden: Bool
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Free worldwide delivery over £200".uppercased())
                    .font(.headline)
                    .foregroundStyle(Color("theme"))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("prime"))
                
                MenuHeaderView(isSeachViewHidden: $isSeachViewHidden, isMenuShowing: $isShowMenu)
                    .padding(.horizontal)
            ZStack(alignment: .bottom) {
                VStack(spacing: 14) {
                        TabView {
                            ForEach(0...2, id: \.self) { image in
                                Rectangle()
                            }
                        }
                        .frame(height: UIScreen.main.bounds.height / 1.5)
                        .frame(maxWidth: .infinity)
                        .tabViewStyle(.page)
                        
                        Text("Recommended")
                            .font(.system(size: 25, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 24)
                            .padding(.leading)
                        
                        RecommendedView()
                            .padding(.leading)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView(isShowMenu: .constant(false), isSeachViewHidden: .constant(false))
    }
}
