//
//  ReminderCategory.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import Foundation
import SwiftUI

struct ReminderCategory: Codable, Identifiable {

    let id: String
    let name: String
    let reminders: [Reminder]
}

// MARK: - Helper Variables
extension ReminderCategory {

    var numOfToDos: Int {
        reminders.count
    }

    // TODO: Implement customisable images
    var image: Image {
        Image(systemName: "bag")
    }

    // TODO: Implement customisable colors
    var color: Color {
        .red
    }
}



#if DEBUG
// MARK: - Mock
extension ReminderCategory {

    static func mock(name: String = "Chores", reminders: [Reminder] = [.mock()]) -> Self {
        .init(id: UUID().description, name: name, reminders: reminders)
    }
}
#endif
