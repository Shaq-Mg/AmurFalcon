//
//  AccountOptions.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import Foundation

enum AccountOptions: Int, Hashable, CaseIterable {
    case blog
    case help
    case reviews
    case orders
    
    var title: String {
        switch self {
        case .blog: return "Blog"
        case .help: return "Help"
        case .reviews: return "Reviews"
        case .orders: return "Orders"
            
        }
    }
}

extension AccountOptions: Identifiable {
    var id: Int { return self.rawValue }
}
