//
//  AboutOptions.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 19/12/2024.
//

import Foundation

enum AboutOptions: Int, Hashable, CaseIterable {
    case terms
    case policy
    case contact
    case about
    
    var title: String {
        switch self {
        case .terms: return "Terms of Service"
        case .policy: return "Privacy Policy"
        case .contact: return "Contact Us"
        case .about: return "About"
            
        }
    }
}

extension AboutOptions: Identifiable {
    var id: Int { return self.rawValue }
}
