//
//  AccountView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import SwiftUI

struct AccountView: View {
    @State private var showAboutView = false
    @State private var showCurrencyOptions = false
    @Binding var isSeachViewHidden: Bool
    @Binding var isMenuShowing: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 18) {
                accountHeader
                    .padding(.horizontal)
                Divider()
                Spacer()
                
                buttonSection
                    .padding(.horizontal)
                
                Divider()
                
                ForEach(AccountOptions.allCases) { option in
                    Button(option.title) {
                        
                    }
                    .foregroundStyle(Color("icon"))
                }
                if showCurrencyOptions {
                    CurrencySelectionView(show: $showCurrencyOptions)
                        .padding(.top)
                } else {
                    Button("Currency: £ GBP") {
                        withAnimation(.easeInOut) {
                            showCurrencyOptions.toggle()
                        }
                    }
                    .foregroundStyle(Color(.label))
                    Spacer()
                }
            }
            .background(Color.init(white: 0.95))
            .fullScreenCover(isPresented: $showAboutView) {
                AboutView()
            }
        }
    }
}

#Preview {
    AccountView(isSeachViewHidden: .constant(false), isMenuShowing: .constant(false))
}

extension AccountView {
    private var accountHeader: some View {
        HStack {
            AnimatedMenuView(isMenuShowing: $isMenuShowing)
            Spacer()
            Text("Account")
                .font(.title)
            Spacer()
            Button {
                withAnimation(.easeInOut) {
                    showAboutView.toggle()
                }
            } label: {
                Image(systemName: "questionmark.circle.fill")
                    .foregroundStyle(Color(.label))
            }
        }
    }
    
    private var buttonSection: some View {
        VStack(spacing: 24) {
            Button {
                
            } label: {
                Text("Sign Up")
                    .foregroundStyle(Color(.label))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Rectangle().stroke(lineWidth: 1).foregroundStyle(Color("background")))
            }
            
            Button {
                
            } label: {
                Text("Log In")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Rectangle().fill(Color("icon")))
            }
        }
    }
}
