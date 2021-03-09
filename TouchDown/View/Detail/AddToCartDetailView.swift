//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by DVKSH on 9.03.21.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.gray)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ??  sampleProduct.red,
                green: shop.selectedProduct?.green ??  sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
