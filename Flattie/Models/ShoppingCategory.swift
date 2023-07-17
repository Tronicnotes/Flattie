//
//  ShoppingCategory.swift
//  Flattie
//
//  Created by Kurt Mohring on 7/6/2023.
//

import Foundation
import SwiftUI

enum ShoppingCategory: String, Codable {

    case baby, bread, canned, cheese, cleaning, coffee, dairy, drinks, frozen, fruits, healthcare, hygiene, meat, other, pasta, pet, seafood, snacks, spices, veges

    var icon: Image {
        switch self {
        case .baby: return .babyItem
        case .bread: return .breadItem
        case .canned: return .cannedItem
        case .cheese: return .cheeseItem
        case .cleaning: return .cleaningItem
        case .coffee: return .coffeeItem
        case .dairy: return .dairyItem
        case .drinks: return .drinksItem
        case .frozen: return .frozenItem
        case .fruits: return .fruitsItem
        case .healthcare: return .healthcareItem
        case .hygiene: return .hygieneItem
        case .meat: return .meatItem
        case .other: return .otherItem
        case .pasta: return .pastaItem
        case .pet: return .petItem
        case .seafood: return .seafoodItem
        case .snacks: return .snacksItem
        case .spices: return .snacksItem
        case .veges: return .vegesItem
        }
    }
}
