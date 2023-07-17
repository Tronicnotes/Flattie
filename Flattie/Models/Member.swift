//
//  Member.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import Foundation

struct Member: Codable, Identifiable {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    let profileImageURLString: String?
    let role: Role
}

// MARK: - Member Role
extension Member {

    enum Role: Codable {
        case member, admin
    }
}

// MARK: - Helper Variables
extension Member {

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

#if DEBUG
// MARK: - Mock
extension Member {

    static func mock(firstName: String = "John",
                     lastName: String = "Appleseed",
                     email: String = "john.appleseed@example.com",
                     profileImageURLString: String? = "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg",
                     role: Role = .member) -> Self {
        .init(id: UUID().description,
              firstName: firstName,
              lastName: lastName,
              email: email,
              profileImageURLString: profileImageURLString,
              role: role)
    }
}
#endif
