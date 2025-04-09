//
//  BottomMenuHeader.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 09/04/2025.
//

import SwiftUI

struct BottomMenuHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .imageScale(.large)
                .foregroundStyle(.theme)
                .frame(width: 48, height: 48)
                .background(.secondary)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Kobe")
                    .font(.subheadline)
                
                Text("Kobe@gmail.com")
                    .font(.footnote)
                    .tint(Color(.systemGray2))
            }
        }
    }
}

#Preview {
    BottomMenuHeader()
}
