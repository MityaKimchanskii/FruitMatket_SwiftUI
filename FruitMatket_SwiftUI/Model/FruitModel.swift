//
//  FruitModel.swift
//  FruitMatket_SwiftUI
//
//  Created by Mitya Kim on 10/30/22.
//

import SwiftUI

// MARK: - Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
