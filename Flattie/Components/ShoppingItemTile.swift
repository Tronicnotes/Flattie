//
//  ShoppingItemTile.swift
//  Flattie
//
//  Created by Kurt Mohring on 5/6/2023.
//

import SwiftUI

struct ShoppingItemTile: View {

    @ScaledMetric private var scaledMaxSize: CGFloat = 160
    private static let iconSize: CGFloat = 64

    let item: ShoppingItem

    var body: some View {
        VStack {
            Spacer()
            ShoppingItemIcon(category: item.category,
                             colour: item.colour.uiColor,
                             iconSize: Self.iconSize,
                             iconPadding: 12)
            Spacer()
            label
        }
        .padding(16)
        .frame(width: scaledMaxSize, height: scaledMaxSize)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: .cardShadow.opacity(0.2),
                radius: 4, x: 1, y: 4)
    }
}

// MARK: - Displaying Views
private extension ShoppingItemTile {

    var label: some View {
        HStack(alignment: .bottom, spacing: 2) {
            Text(item.name)
                .font(.headline)
                .foregroundColor(.textDark)
            Text(item.quantity.valueLabel)
                .font(.subheadline)
                .foregroundColor(.textSecondary)
        }
        .frame(maxHeight: .infinity)
    }
}

#if DEBUG
// MARK: - Previews
struct ShoppingItemTile_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ShoppingItemTile(item: .mock(name: "Eggs", category: .dairy, quantity: .tray(value: 1)))
            ShoppingItemTile(item: .mock(name: "Dishwashing Liquid", category: .cleaning, quantity: .bottle(value: 1)))
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding()
        .background(Color.backgroundPrimary)
    }
}
#endif
