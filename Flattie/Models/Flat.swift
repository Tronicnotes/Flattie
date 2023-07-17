//
//  Flat.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import Foundation

struct Flat: Codable {

    let id: String
    let name: String
    let members: [Member]
}
