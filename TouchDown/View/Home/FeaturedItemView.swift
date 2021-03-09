//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by DVKSH on 5.03.21.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

    // MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackGround)
    }
}
