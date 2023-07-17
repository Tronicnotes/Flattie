//
//  ItemColour.swift
//  Flattie
//
//  Created by Kurt Mohring on 5/6/2023.
//

import SwiftUI

enum ItemColour: String, Codable {

    case blue, brown, grey, navy, peach, purple, red, teal, yellow

    var uiColor: Color {
        switch self {
        case .blue: return .itemBlue
        case .brown: return .itemBrown
        case .grey: return .itemGrey
        case .navy: return .itemNavy
        case .peach: return .itemPeach
        case .purple: return .itemPurple
        case .red: return .itemRed
        case .teal: return .itemTeal
        case .yellow: return .itemYellow
        }
    }
}
