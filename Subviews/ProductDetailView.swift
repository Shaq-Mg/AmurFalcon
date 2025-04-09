//
//  ProductDetailView.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 22/12/2024.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var showFullDescription = false
    @State private var showSizeSheet = false
    @Binding var isMenuShowing: Bool
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 18) {
                ZStack(alignment: .top) {
                    selectedImage
                    ShopHeaderView(isMenuShowing: $isMenuShowing)
                        .foregroundStyle(Color("theme"))
                        .padding(.top, 64)
                        .padding(.horizontal)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 22) {
                        Text("Black oversized hoodie".uppercased())
                            .font(.title2.bold())
                        Text("£115")
                            .font(.title3)
                        
                        CartAmountButtonView()
                        
                        sizeButton
                        
                        cartButton
                        
                        descriptionSection
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
            if showSizeSheet {
                SizeSelectionView(show: $showSizeSheet)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProductDetailView(isMenuShowing: .constant(false))
}

extension ProductDetailView {
    private var selectedImage: some View {
        Rectangle()
            .foregroundStyle(.icon)
            .frame(maxWidth: .infinity)
            .frame(height: 450)
            .tabViewStyle(.page)
    }
    
    private var sizeButton: some View {
        VStack {
            Button {
                withAnimation(.spring) {
                    showSizeSheet.toggle()
                }
            } label: {
                Text("Size")
                Spacer()
                Text("UK M".uppercased())
                Image(systemName: "chevron.down")
                
            }
        }
        .font(.system(size: 18, weight: .semibold))
        .foregroundStyle(Color(.label))
        .padding()
        .frame(maxWidth: .infinity)
        .background(Rectangle().stroke(lineWidth: 1).fill(Color("background")))
    }
    
    private var cartButton: some View {
        VStack {
            Button {
                
            } label: {
                Text("Add to cart".uppercased())
            }
        }
        .font(.system(size: 18, weight: .semibold))
        .foregroundStyle(Color("theme"))
        .padding()
        .frame(maxWidth: .infinity)
        .background(Rectangle().fill(Color("background")))
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Product Description").bold()
            Text("Delivered as part of the second drop of the Amur falcon Spring/Summer 2024 season, this black oversized hoodie was made available alongside more than 50 new apparel items.")
                .lineLimit(showFullDescription ? nil : 2)
            
            Button(showFullDescription ? "Show less" : "Read More") {
                withAnimation(.easeInOut) {
                    showFullDescription.toggle()
                }
            }
            .bold()
        }
        .padding(.bottom)
    }
}
