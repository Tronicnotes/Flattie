//
//  MemberBubble.swift
//  Flattie
//
//  Created by Kurt Mohring on 8/6/2023.
//

import SwiftUI

struct MemberBubble: View {

    private let imageURLString: String?
    private let size: CGFloat

    init(imageURLString: String?, size: CGFloat = 48) {
        self.imageURLString = imageURLString
        self.size = size
    }

    var body: some View {
        Group {
            if let imageURLString, let imageURL = URL(string: imageURLString) {
                AsyncImage(url: imageURL) { image in
                    image
                        .resizable()
                } placeholder: {
                    Self.placeholder
                }
            } else {
                Self.placeholder
            }
        }
        .frame(width: size, height: size)
        .clipShape(Circle())
    }
}

private extension MemberBubble {

    static var placeholder: some View {
        Image(systemName: "person.circle")
            .resizable()
    }
}

struct MemberBubble_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MemberBubble(imageURLString: "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg")
                .previewDisplayName("Member Bubble")

            MemberBubble(imageURLString: nil)
                .previewDisplayName("Missing Image")
        }
    }
}
