//
//  ProductModel.swift
//  TouchDown
//
//  Created by DVKSH on 5.03.21.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double {return color[0]}
    var green: Double {return color[1]}
    var blue: Double {return color[2]}
    
    var formatedPrice: String {return "$\(price)"}
}
