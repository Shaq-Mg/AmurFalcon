//
//  ClothingBarOptions.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import Foundation

// MARK: Clothing data model
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

// MARK: Accessories data model
enum AccessorieBarOptions: Int, CaseIterable {
    case headwear
    case wallets
    case bags
    
    var title: String {
        switch self {
        case .headwear: return "Headwear"
        case .wallets: return "wallets"
        case .bags: return "Bags"
            
        }
    }
    
    var items: [Item] {
        switch self {
        case .headwear: return headwearItems
        case .wallets: return walletItems
        case .bags: return bagItems
            
        }
    }
}
