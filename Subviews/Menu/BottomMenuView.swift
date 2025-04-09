//
//  SideMenuView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct BottomMenuView: View {
    @State private var selectedOption: Page? = nil
    @Binding var isSeachViewHidden: Bool
    @Binding var isMenuShowing: Bool
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            SideMenuHeader()
            ForEach(Page.allCases) { page in
                Button {
                    withAnimation(.easeInOut) {
                        selectedOption = page
                        selectedTab = page.rawValue
                        isMenuShowing = false
                    }
                } label: {
                    VStack(spacing: 4) {
                        MenuRowView(page: page)
                        Capsule()
                            .fill(selectedTab == page.rawValue ? Color(.label) : .clear)
                            .frame(width: 86, height: 3)
                    }
                    .foregroundStyle(selectedOption == page ? .background : .prime)
                }
            }
            Divider()
            
            Button {
                
            } label: {
                HStack {
                    Text("United Kingdomw (GBP £)")
                    Image(systemName: "chevron.down")
                }
                .foregroundStyle(Color(.label))
            }
            Spacer()
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 1.5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .transition(.move(edge: .bottom))
        .background(.white)
    }
}

#Preview {
    BottomMenuView(isSeachViewHidden: .constant(false), isMenuShowing: .constant(true), selectedTab: .constant(0))
}
