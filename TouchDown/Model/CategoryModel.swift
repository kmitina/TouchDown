//
//  CategoryModel.swift
//  TouchDown
//
//  Created by DVKSH on 5.03.21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
