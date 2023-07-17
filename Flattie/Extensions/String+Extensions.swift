//
//  Strings+Extensions.swift
//  Flattie
//
//  Created by Kurt Mohring on 12/6/2023.
//

import Foundation

extension String {

    func localisedWithValue(_ values: CVarArg..., comment: String = "") -> Self {
        let localisedString = NSLocalizedString(self, comment: comment)
        return String.localizedStringWithFormat(localisedString, values)
    }
}
