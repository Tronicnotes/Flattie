//
//  ToolbarButtonStyle.swift
//  Flattie
//
//  Created by Kurt Mohring on 7/6/2023.
//

import SwiftUI

struct ToolbarButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        ToolbarButtonStyleWrapper(configuration: configuration)
    }
}

private struct ToolbarButtonStyleWrapper: View {
    @Environment(\.isEnabled) var isEnabled
    let configuration: ButtonStyle.Configuration

    private var fontColour: Color {
        isEnabled
        ? .textDark.opacity(configuration.isPressed ? 0.7 : 1)
        : .textGreyLight
    }

    var body: some View {
        configuration.label
            .foregroundColor(fontColour)
    }
}

extension ButtonStyle where Self == ToolbarButtonStyle {

    static var toolbarStyle: ToolbarButtonStyle { .init() }
}
