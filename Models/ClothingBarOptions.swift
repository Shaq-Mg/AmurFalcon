//
//  ClothingBarOptions.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import Foundation

enum ClothingBarOptions: Int, CaseIterable {
    case basics
    case hoodies
    case knitwear
    case outerwear
    
    var title: String {
        switch self {
        case .basics: return "Basics"
        case .hoodies: return "Hoodies"
        case .knitwear: return "Knitwear"
        case .outerwear: return "Outerwear"
            
        }
    }
    
    var items: [Item] {
        switch self {
        case .basics: return basicItems
        case .hoodies: return hoodedItems
        case .knitwear: return knittedItems
        case .outerwear: return outerwearItems
            
        }
    }
}
