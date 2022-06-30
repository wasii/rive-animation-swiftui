//
//  ContentView.swift
//  RiveAnimation
//
//  Created by Wasiq Saleem on 30/06/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .chat
    var body: some View {
        ZStack {
            switch selectedTab {
            case .chat:
                Text("Chate")
            case .search:
                Text("Search")
            case .timer:
                Text("Timer")
            case .bell:
                Text("Notifications")
            case .user:
                Text("User")
            }
            TabBarView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
