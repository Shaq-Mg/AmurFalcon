//
//  SearchBarView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 18/12/2024.
//

import SwiftUI

struct SearchBarView: View {
    @State private var isAnimated = false
    @State private var searchText = ""
    @Binding var isSeachViewHidden: Bool
    
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 12) {
                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color("prime"))
                    
                    TextField("Search...", text: $searchText)
                        .font(.system(size: 20))
                }
                
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: isAnimated ? UIScreen.main.bounds.width - 32 : 0, height: 8, alignment: .leading)
                    .foregroundStyle(Color("background"))
            }
            .frame(width: UIScreen.main.bounds.width - 32)
            .font(.system(size: 24, weight: .semibold))
            .onAppear {
                withAnimation(.easeIn(duration: 2.0)) {
                    isAnimated = true
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "xmark")
                        .onTapGesture {
                            withAnimation(.easeOut(duration: 0.5)) {
                                isSeachViewHidden.toggle()
                            }
                        }
                        .foregroundStyle(Color("background"))
                        .font(.system(size: 18, weight: .bold))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SearchBarView(isSeachViewHidden: .constant(false))
    }
}
