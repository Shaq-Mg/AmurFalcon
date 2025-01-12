//
//  AboutView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            aboutHeader
                .padding([.bottom, .horizontal])
            Divider()
            ScrollView {
                ForEach(AccountOptions.allCases) { option in
                    VStack(alignment: .leading, spacing: 24) {
                        Button(option.title) {
                            
                        }
                        .font(.title2)
                        .foregroundStyle(Color(.label))
                        .padding([.top, .horizontal])
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    AboutView()
}

extension AboutView {
    private var aboutHeader: some View {
        HStack {
            Button("Close") {
                dismiss()
            }
            .foregroundStyle(Color("prime"))
            .font(.headline)
            Spacer()
            Text("About")
                .font(.title3)
            Spacer()
            Text("     ")
        }
    }
}
