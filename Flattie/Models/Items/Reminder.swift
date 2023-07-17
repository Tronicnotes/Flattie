//
//  Reminder.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import Foundation

struct Reminder: Item {

    let id: String
    let name: String
    let notes: String?
    let flag: Bool
    let createdOn: Date
    let createdBy: Member
    let assignees: [Member]
    let priority: Priority?
    let completed: Bool
}

#if DEBUG
// MARK: - Mock
extension Reminder {

    static func mock(name: String = "Fold washing",
                     notes: String? = nil,
                     flag: Bool = false,
                     createdBy: Member = .mock(),
                     assignees: [Member] = [.mock()],
                     priority: Priority? = nil,
                     completed: Bool = false) -> Self {
        .init(id: UUID().description,
              name: name,
              notes: notes,
              flag: flag,
              createdOn: .now,
              createdBy: createdBy,
              assignees: assignees,
              priority: priority,
              completed: completed)
    }
}
#endif
