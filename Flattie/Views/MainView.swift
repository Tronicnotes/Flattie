//
//  MainView.swift
//  Flattie
//
//  Created by Kurt Mohring on 4/6/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }

            Text("Chores Page")
                .tabItem {
                    Label("Chores", systemImage: "dishwasher")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
