//
//  Date+Extensions.swift
//  Flattie
//
//  Created by Kurt Mohring on 9/6/2023.
//

import Foundation

// MARK: - Format Dates

extension Date {

    func ddMMyyyy() -> String {
        Self.formatter.dateFormat = "dd/MM/yyyy"
        return Self.formatter.string(from: self)
    }
}

// MARK: - Date Formatter

private extension Date {

    static var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.locale = .autoupdatingCurrent
        formatter.timeZone = .autoupdatingCurrent
        return formatter
    }()
}
