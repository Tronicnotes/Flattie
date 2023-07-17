//
//  EmptySectionMessage.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import SwiftUI

struct EmptySectionMessage: View {

    let message: String

    var body: some View {
        VStack(alignment: .center) {
            Text(message)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct EmptySectionMessage_Previews: PreviewProvider {
    static var previews: some View {
        EmptySectionMessage(message: "You have no upcoming events today")
    }
}
