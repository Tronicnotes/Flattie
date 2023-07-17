//
//  ReminderTile.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import SwiftUI

struct ReminderTile: View {

    let name: String
    let categoryName: String
    let assignees: [Member]
    let icon: Image
    let color: Color

    private let memberBubbleSize: CGFloat = 40
    private var memberBubblePadding: CGFloat {
        memberBubbleSize / 3
    }

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack(alignment: .center) {
                iconBubble
                labelView
                Spacer()
                arrowButton
            }
            .padding(16)
            .background(color.gradient)
            .cornerRadius(16)
            .padding(EdgeInsets(top: memberBubblePadding,
                                leading: 0,
                                bottom: 0,
                                trailing: memberBubblePadding))
            memberBubbleStack
        }
    }
}

// MARK: - Displaying Views

private extension ReminderTile {

    var iconBubble: some View {
        icon
            .resizable()
            .scaledToFit()
            .foregroundColor(.textDark)
            .padding(8)
            .frame(width: 40, height: 40)
            .background(Color.white.opacity(0.4))
            .clipShape(Circle())
    }

    var labelView: some View {
        VStack(alignment: .leading) {
            Group {
                Text(categoryName)
                    .font(.subheadline.bold())
                Text(name)
                    .font(.title2.bold())
                Text("Tomorrow")
                    .font(.caption.bold())
            }
            .foregroundColor(.textDark)
        }
    }

    var arrowButton: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .frame(width: 24, height: 20)
            .foregroundColor(.textDark)
    }

    var memberBubbleStack: some View {
        ZStack {
            ForEach(Array(zip(assignees.indices, assignees)), id: \.0) { index, member in
                MemberBubble(imageURLString: member.profileImageURLString,
                             size: memberBubbleSize)
                .padding(.leading, 40 * CGFloat(index))
            }
        }
    }
}

#if DEBUG
// MARK: - Preview
struct ToDoTile_Previews: PreviewProvider {

    static let mockReminder = Reminder.mock()

    static var previews: some View {
        ReminderTile(name: mockReminder.name,
                     categoryName: "Chores",
                     assignees: [
                        .mock(),
                            .mock(profileImageURLString: "https://www.getnews.info/uploads/bb4710262b9221a3406b68c63334e1b3.jpg")
                     ],
                     icon: Image(systemName: "dishwasher"),
                     color: .itemRed)
    }
}
#endif
