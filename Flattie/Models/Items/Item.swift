//
//  Item.swift
//  Flattie
//
//  Created by Kurt Mohring on 8/6/2023.
//

import Foundation
import SwiftUI

// MARK: - Item

protocol Item: Identifiable, Codable {

    var id: String { get }
    var name: String { get }
    var createdOn: Date { get }
    var createdBy: Member { get }
    var assignees: [Member] { get }
    var priority: Priority? { get }
}

// MARK: - Priority

enum Priority: String, Codable {
    case low, medium, high

    var icon: Image {
        switch self {
        case .low: return Image(systemName: "exclamationmark")
        case .medium: return Image(systemName: "exclamationmark.2")
        case .high: return Image(systemName: "exclamationmark.3")
        }
    }
}
