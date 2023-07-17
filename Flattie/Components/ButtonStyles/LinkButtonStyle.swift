//
//  LinkButtonStyle.swift
//  Flattie
//
//  Created by Kurt Mohring on 7/6/2023.
//

import SwiftUI

struct LinkButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        LinkButtonStyleWrapper(configuration: configuration)
    }
}

private struct LinkButtonStyleWrapper: View {
    @Environment(\.isEnabled) var isEnabled
    let configuration: ButtonStyle.Configuration

    private var fontColour: Color {
        isEnabled
        ? .textSecondary.opacity(configuration.isPressed ? 0.7 : 1)
        : .textGreyLight
    }

    var body: some View {
        configuration.label
            .underline()
            .foregroundColor(fontColour)
    }
}

extension ButtonStyle where Self == LinkButtonStyle {

    static var linkStyle: LinkButtonStyle { .init() }
}
