//
//  Categorised.swift
//  Flattie
//
//  Created by Kurt Mohring on 9/6/2023.
//

import Foundation
import SwiftUI

protocol Categorised: Codable {

    var category: ItemCategory { get }
}

enum ItemCategory: Codable {

    case chore, event, reminder

    var icon: Image {
        switch self {
        case .chore: return .init(systemName: "washer")
        case .event: return .init(systemName: "calendar")
        case .reminder: return .init(systemName: "checklist")
        }
    }

    var colour: Color {
        switch self {
        case .chore: return .itemPurple
        case .event: return .itemTeal
        case .reminder: return .yellow
        }
    }
}
