//
//  DashboardViewModel.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import Foundation

extension DashboardView {

    final class ViewModel: ObservableObject {

        @Published var shopppingItems: [ShoppingItem] = []

        init() {
            shopppingItems = [
                .mock(),
                .mock(name: "Wine", colour: .yellow, category: .drinks),
                .mock(name: "Bacon", colour: .blue, category: .meat),
                .mock(name: "Soap", colour: .peach, category: .cleaning),
                .mock(name: "Broccoli", colour: .teal, category: .veges),
                .mock(name: "Coffee", colour: .grey, category: .coffee)
            ]
        }
    }
}
