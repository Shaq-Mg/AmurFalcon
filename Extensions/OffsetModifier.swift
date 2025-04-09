//
//  OffsetModifier.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 21/12/2024.
//

import SwiftUI

struct OffsetModifier: ViewModifier {
    let option: AccessorieBarOptions
    @Binding var currentOption: AccessorieBarOptions
    
    func body(content: Content) -> some View {
        content
            .overlay(GeometryReader { proxy in
                Color.clear
                    .preference(key: OffsetKey.self, value: proxy.frame(in: .named("scroll")))
            })
            .onPreferenceChange(OffsetKey.self) { proxy in
                let offset = proxy.minY
                withAnimation(.easeInOut) {
                    currentOption = (offset < 20 && -offset < (proxy.midX / 2) && currentOption != option)
                    ? option : currentOption
                }
            }
    }
}
