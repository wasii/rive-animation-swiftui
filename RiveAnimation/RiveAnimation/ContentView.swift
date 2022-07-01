//
//  ContentView.swift
//  RiveAnimation
//
//  Created by Wasiq Saleem on 30/06/2022.
//

import SwiftUI
import RiveRuntime
struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .chat
    @State var isOpen: Bool = false
    let menuButton = RiveViewModel(fileName: "menu_button", stateMachineName: "State Machine", autoPlay: false)
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .chat:
                    HomeView()
                case .search:
                    Text("Search")
                case .timer:
                    Text("Timer")
                case .bell:
                    Text("Notifications")
                case .user:
                    Text("User")
                }
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 80)
            }
            .safeAreaInset(edge: .top) {
                Color.clear.frame(height: 104)
            }
            .ignoresSafeArea()
            menuButton.view()
                .frame(width: 44, height: 44)
                .mask(Circle())
                .shadow(color: Color("Background 2").opacity(0.2), radius: 5, x: 0, y: 5)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .onTapGesture {
                    try? menuButton.setInput("isOpen", value: isOpen)
                    isOpen.toggle()
                    
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
