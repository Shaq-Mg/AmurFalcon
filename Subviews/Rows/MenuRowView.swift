//
//  MenuRowView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 09/04/2025.
//

import SwiftUI

struct MenuRowView: View {
    let page: Page
    @Binding var selectedPage: Page?
    
    private var isSelected: Bool {
        return selectedPage == page
    }
    
    var body: some View {
        VStack {
            Text(page.title)
                .foregroundStyle(Color("icon"))
                .font(.system(size: 24))
        }
    }
}

#Preview {
    MenuRowView(page: .footwear, selectedPage: .constant(.footwear))
}
