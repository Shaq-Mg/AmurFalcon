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

// MARK: Items for Clothing data model
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

// MARK: Items for Accessories data model
var headwearItems: [Item] = [
    .init(title: "Navy Trucker Cap", description: "One Size", price: "£70", imageName: "photo.fill"),
    .init(title: "Green Trucker Capt", description: "One Size", price: "£70", imageName: "photo.fill"),
    .init(title: "Grey Beanie", description: "100% Handmade Cotton", price: "£55", imageName: "photo.fill"),
    .init(title: "Black Beanie", description: "100% Handmade Cotton", price: "£55", imageName: "photo.fill"),
]

var walletItems: [Item] = [
    .init(title: "Black Leather Wallet", description: "Handmade With 100% Recycled Materials", price: "£35", imageName: "photo")
]

var bagItems: [Item] = [
    .init(title: "Tote Bag Medium", description: "Handmade With 100% Recycled Materials", price: "£100", imageName: "photo"),
    .init(title: "Tote Bag Large", description: "Handmade With 100% Recycled Materials", price: "£115", imageName: "photo"),
]
