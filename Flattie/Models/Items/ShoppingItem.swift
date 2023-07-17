//
//  ShoppingItem.swift
//  Flattie
//
//  Created by Kurt Mohring on 5/6/2023.
//

import Foundation

struct ShoppingItem: Item {

    let id: String
    let name: String
    let colour: ItemColour
    let category: ShoppingCategory
    let quantity: Quantity
    let createdOn: Date
    let createdBy: Member
    let assignees: [Member]
    let priority: Priority?
    var completed: Bool
}

extension ShoppingItem {

    /// Quantity enum of the item.
    enum Quantity: CaseIterable, Codable {

        case piece(value: Int)
        case gram(value: Double)
        case kilogram(value: Double)
        case litre(value: Double)
        case millilitre(value: Double)
        case cup(value: Int)
        case tsp(value: Int)
        case tbsp(value: Int)
        case bottle(value: Int)
        case bunch(value: Int)
        case can(value: Int)
        case tray(value: Int)

        var typeLabel: String {
            switch self {
            case .piece:
                return "pieces"
            case .gram:
                return "grams"
            case .kilogram:
                return "kilograms"
            case .litre:
                return "litres"
            case .millilitre:
                return "millilitres"
            case .cup:
                return "cups"
            case .tsp:
                return "tsp"
            case .tbsp:
                return "Tbsp"
            case .bottle:
                return "bottles"
            case .bunch:
                return "bunches"
            case .can:
                return "cans"
            case .tray:
                return "tray"
            }
        }

        var valueLabel: String {
            switch self {
            case .piece(let v):
                return "x\(v)"
            case .gram(let v):
                return "\(v)g"
            case .kilogram(let v):
                return "\(v)kg"
            case .litre(let v):
                return "\(v)L"
            case .millilitre(let v):
                return "\(v)ml"
            case .cup(let v):
                return "quantity_cups".localisedWithValue(v)
            case .tsp(let v):
                return "\(v) tsp"
            case .tbsp(let v):
                return "\(v) tbsp"
            case .bottle(let v):
                return "quantity_bottles".localisedWithValue(v)
            case .bunch(let v):
                return "quantity_bunches".localisedWithValue(v)
            case .can(let v):
                return "quantity_cans".localisedWithValue(v)
            case .tray(let v):
                return "quantity_trays".localisedWithValue(v)
            }
        }

        // Allows enum cases to be iterated over.
        static var allCases: [ShoppingItem.Quantity] = [
            .piece(value: 1),
            .gram(value: 1),
            .kilogram(value: 1),
            .litre(value: 1),
            .millilitre(value: 1),
            .cup(value: 1),
            .tsp(value: 1),
            .tbsp(value: 1),
            .bottle(value: 1),
            .bunch(value: 1),
            .can(value: 1)
        ]
    }
}

#if DEBUG
// MARK: - Mock
extension ShoppingItem {

    static func mock(name: String = "Eggs",
                     colour: ItemColour = .red,
                     category: ShoppingCategory = .dairy,
                     quantity: Quantity = .tray(value: 1),
                     createdBy: Member = .mock(),
                     assignees: [Member] = [],
                     priority: Priority? = nil) -> Self {
        .init(id: UUID().description,
              name: name,
              colour: colour,
              category: category,
              quantity: quantity,
              createdOn: .now,
              createdBy: createdBy,
              assignees: assignees,
              priority: priority,
              completed: false)
    }
}
#endif
