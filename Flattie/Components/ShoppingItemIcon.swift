//
//  ShoppingItemIcon.swift
//  Flattie
//
//  Created by Kurt Mohring on 11/6/2023.
//

import SwiftUI

struct ShoppingItemIcon: View {

    let category: ShoppingCategory
    let colour: Color
    let iconSize: CGFloat
    let iconPadding: CGFloat

    var body: some View {
        category.icon
            .resizable()
            .scaledToFit()
            .frame(width: iconSize,
                   height: iconSize)
            .foregroundColor(colour)
            .padding(iconPadding)
            .background(colour.opacity(0.2))
            .clipShape(Circle())
    }
}

struct ShoppingItemIcon_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingItemIcon(category: .coffee, colour: .itemBrown, iconSize: 32, iconPadding: 12)
    }
}
