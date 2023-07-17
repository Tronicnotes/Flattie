//
//  Calendar+Extensions.swift
//  Flattie
//
//  Created by Kurt Mohring on 9/6/2023.
//

import Foundation

extension Calendar {

    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let startDate = startOfDay(for: from)
        let endDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: startDate, to: endDate)

        return numberOfDays.day!
    }
}
