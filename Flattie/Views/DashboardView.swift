//
//  DashboardView.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import SwiftUI

struct DashboardView: View {

    @StateObject private var viewModel: ViewModel = .init()
    @State private var safeAreaInset: EdgeInsets = .init()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    headerView
                    shoppingItemsCarousel
                    upcomingEventsSection
                }
                .padding(.bottom, 16)
            }
            .edgesIgnoringSafeArea(.top)
            .background(Color.backgroundPrimary)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal")
                    }
                    .buttonStyle(.toolbarStyle)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "gearshape")
                    }
                    .buttonStyle(.toolbarStyle)
                }
            }
            .getSafeAreaInsets($safeAreaInset)
        }
    }
}

private extension DashboardView {

    var headerView: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("""
Good
morning!
"""
            )
            .font(.system(size: 42, design: .rounded).bold())
            Text("You have **5** shopping items on the list today")
        }
        .foregroundColor(.textDark)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.init(top: safeAreaInset.top + 40, leading: 16, bottom: 24, trailing: 16))
        .background(
            RoundedCornersShape(corners: [.bottomLeft, .bottomRight], radius: 32)
                .fill(Color.primaryLight)
        )
    }

    var shoppingItemsCarousel: some View {
        VStack(spacing: 0) {
            SectionHeader(heading: "Shopping:")
                .padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.shopppingItems) { item in
                        ShoppingItemTile(item: item)
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(16)
            }
        }
    }

    var upcomingEventsSection: some View {
        VStack(spacing: 4) {
            SectionHeader(heading: "What's next:")
            ReminderTile(name: "Sweep the floors",
                         categoryName: "Chores",
                         assignees: [.mock()],
                         icon: Image(systemName: "dishwasher"),
                         color: .itemPurple)
            ReminderTile(name: "Rent is due",
                         categoryName: "Event",
                         assignees: [],
                         icon: Image(systemName: "calendar"),
                         color: .itemTeal)
            ReminderTile(name: "Feed the dog",
                         categoryName: "Reminder",
                         assignees: [
                            .mock(),
                            .mock(profileImageURLString: "https://www.getnews.info/uploads/bb4710262b9221a3406b68c63334e1b3.jpg")
                         ],
                         icon: Image(systemName: "list.bullet"),
                         color: .itemYellow)
//            EmptySectionMessage(message: "You have no upcoming events today")
//                .padding(.horizontal, 16)
        }
        .padding(.horizontal, 16)
    }
}

// MARK: - Section Header
private extension DashboardView {

    struct SectionHeader: View  {

        let heading: String

        var body: some View {
            HStack {
                Text(heading)
                    .font(.title2)
                    .foregroundColor(.textDark)
                Spacer()
                Button("View all", action: {})
                    .buttonStyle(.linkStyle)
            }
        }
    }
}

#if DEBUG
// MARK: - Previews
struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
#endif
