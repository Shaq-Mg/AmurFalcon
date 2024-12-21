//
//  Items.swift
//  AmurFalcon
//
//  Created by Shaquille McGregor on 20/12/2024.
//

import Foundation

struct Item: Identifiable {
    var id = UUID().uuidString
    let title: String
    let description: String
    let price: String
    let imageName: String
}

var basicItems: [Item] = [
    .init(title: "Black T-shirt", description: "100% Handmade Cotton", price: "£115", imageName: "photo"),
    .init(title: "Grey T-shirt", description: "100% Handmade Cotton", price: "£80", imageName: "photo"),
    .init(title: "Blue T-shirt", description: "100% Handmade Cotton", price: "£80", imageName: "photo"),
    .init(title: "Burgundy T-shirt", description: "100% Handmade Cotton", price: "£80", imageName: "photo"),
    .init(title: "Green T-shirt", description: "100% Handmade Cotton", price: "£70", imageName: "photo")
]

var hoodedItems: [Item] = [
    .init(title: "Navy Hoodie", description: "Oversized", price: "£115", imageName: "photo.fill"),
    .init(title: "Charcol Hoodie", description: "Oversized", price: "£115", imageName: "photo.fill"),
    .init(title: "Green Zipped Hoodie", description: "Oversized", price: "£115", imageName: "photo.fill"),
    .init(title: "Burgundy Knitted Hoodie", description: "Oversized", price: "£110", imageName: "photo.fill"),
    .init(title: "Off-White Hoodie", description: "Oversized", price: "£115", imageName: "photo.fill"),
    .init(title: "Baby Blue Hoodie", description: "Oversized", price: "£110", imageName: "photo.fill")
]
var knittedItems: [Item] = [
    .init(title: "Navy Knitted Jumper", description: "100% Handmade  Cotton", price: "£100", imageName: "photo"),
    .init(title: "Green Knitted Jumper", description: "100% Handmade Cotton", price: "£90", imageName: "photo"),
    .init(title: "Grey Knitted Jumper", description: "100% Handmade Cotton", price: "£90", imageName: "photo"),

]
var outerwearItems: [Item] = [
    .init(title: "Black Puffer Jacket", description: "100% Handmade Cotton", price: "£145", imageName: "photo.fill"),
    .init(title: "Charcol Oversized Jacket", description: "100% Handmade Cotton", price: "£155", imageName: "photo.fill"),
    .init(title: "Navy Puffer Jacket", description: "100% Handmade Cotton", price: "£145", imageName: "photo.fill")
]
