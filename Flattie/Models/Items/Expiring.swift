//
//  Expiring.swift
//  Flattie
//
//  Created by Kurt Mohring on 9/6/2023.
//

import Foundation

protocol Expiring: Codable {

    var dueDate: Date { get set }
}

extension Expiring {

    var formattedDueDate: String {
        let daysUntilDue = Calendar(identifier: .gregorian).numberOfDaysBetween(.now, and: dueDate)
        switch daysUntilDue {
        case ..<0:
            return "Overdue"
        case 0:
            return "Due today, \(dueDate.formatted(.dateTime.hour(.defaultDigits(amPM: .abbreviated))))"
        case 1:
            return "Due tomorrow, \(dueDate.formatted(.dateTime.hour(.defaultDigits(amPM: .abbreviated))))"
        case 2...7:
            return "Due in \(daysUntilDue) days"
        case 8...:
            return "Due on \(dueDate.ddMMyyyy())"
        default:
            return "Unknown due date"
        }
    }
}
