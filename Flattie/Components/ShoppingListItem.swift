//
//  ShoppingListItem.swift
//  Flattie
//
//  Created by Kurt Mohring on 11/6/2023.
//

import SwiftUI

struct ShoppingListItem: View {

    @State private var item: ShoppingItem

    private static let iconSize: CGFloat = 24

    init(item: ShoppingItem) {
        _item = State(initialValue: item)
    }

    var body: some View {
        HStack {
            Button {
                item.completed.toggle()
            } label: {
                Image(systemName: item.completed ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(item.colour.uiColor)
            }
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.body)
                    .foregroundColor(.textDark)
                Text(item.quantity.valueLabel)
                    .font(.subheadline)
                    .foregroundColor(.textSecondary)
            }
            Spacer()
            if let assigned = item.assignees.first {
                MemberBubble(imageURLString: assigned.profileImageURLString, size: Self.iconSize)
            }
            ShoppingItemIcon(category: item.category,
                             colour: item.colour.uiColor,
                             iconSize: Self.iconSize,
                             iconPadding: 4)
        }
    }
}

struct ShoppingListItem_Previews: PreviewProvider {
    static var previews: some View {
        List([ShoppingItem.mock(), ShoppingItem.mock(name: "Chicken breast", colour: .brown, category: .meat, quantity: .gram(value: 800), assignees: [.mock()])], id: \.id) { item in
            ShoppingListItem(item: item)
        }
    }
}
