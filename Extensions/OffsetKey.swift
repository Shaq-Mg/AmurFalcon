//
//  OffsetKey.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
