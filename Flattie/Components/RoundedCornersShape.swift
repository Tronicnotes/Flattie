//
//  RoundedCornersShape.swift
//  Flattie
//
//  Created by Kurt Mohring on 5/6/2023.
//

import SwiftUI

public struct RoundedCornersShape: Shape {
    private let corners: UIRectCorner
    private let radius: CGFloat

    public init(corners: UIRectCorner, radius: CGFloat) {
        self.corners = corners
        self.radius = radius
    }

    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))
        return Path(path.cgPath)
    }
}


struct RoundedCornersShape_Previews: PreviewProvider {
    static var previews: some View {
        Text("Rounded Corners")
            .padding()
            .background(
                RoundedCornersShape(corners: .bottomLeft, radius: 8)
                    .fill(Color.red)
            )
    }
}
