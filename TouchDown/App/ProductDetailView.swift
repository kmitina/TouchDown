//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by DVKSH on 5.03.21.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // DETAIL BUTTOM PART
            
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                                
                } //: SCROLL
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
                } //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
            
        }) //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
            
    }
}
// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
