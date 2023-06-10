//
//  FruitModel.swift
//  FruitsUI
//
//  Created by Fabian Gonzales  on 10/06/23.
//

import SwiftUI

// MARK: FRUIT DATA MODAL

struct Fruit : Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
    
    
}
