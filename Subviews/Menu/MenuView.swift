//
//  MenuView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct MenuView: View {
    @State private var selectedOption: Page? = nil
    @Binding var isSeachViewHidden: Bool
    @Binding var isMenuShowing: Bool
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            BottomMenuHeader()
            Divider()
            ForEach(Page.allCases) { page in
                Button {
                    withAnimation(.easeInOut) {
                        selectedOption = page
                        selectedTab = page.rawValue
                        isMenuShowing = false
                    }
                } label: {
                    HStack(spacing: 12) {
                        MenuRowView(page: page, selectedPage: $selectedOption)
                        Image(systemName: "checkmark")
                            .fontWeight(.semibold)
                            .imageScale(.large)
                            .foregroundStyle(selectedTab == page.rawValue ? Color(.label) : .clear)
                    }
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

        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 1.3)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .animation(.easeInOut, value: selectedOption)
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    MenuView(isSeachViewHidden: .constant(false), isMenuShowing: .constant(true), selectedTab: .constant(0))
}
