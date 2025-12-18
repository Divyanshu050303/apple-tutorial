//
//  ContentView.swift
//  chat-app
//
//  Created by RAC IT on 16/12/25.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case featured
        case list
    }
    @State private var selection: Tab = .featured
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
