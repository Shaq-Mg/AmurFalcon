//
//  Page.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import Foundation

// MARK: Data model for side menu
enum Page: Int, Hashable, CaseIterable {
    case home
    case clothing
    case accessories
    case footwear
    case account
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .clothing: return "Clothing"
        case .accessories: return "Accessories"
        case .footwear: return "Footwear"
        case .account: return "Account"
            
        }
    }
}

extension Page: Identifiable {
    var id: Int { return self.rawValue }
}
