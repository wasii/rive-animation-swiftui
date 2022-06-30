//
//  OnboardingView.swift
//  RiveAnimation
//
//  Created by NaheedPK on 30/06/2022.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let startCourseButton = RiveViewModel(fileName: "button")
    var body: some View {
        ZStack {
            ///Background Section
            background
            
            
            ///Button Section
            startCourseButton.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Start the Course", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.headline)
                )
                .background(
                    Color.black
                        .cornerRadius(30)
                        .blur(radius: 10)
                        .opacity(0.3)
                        .offset(y:10)
                )
                .onTapGesture {
                    try? startCourseButton.play(animationName: "active")
                }
        }
    }
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 30)
                    .offset(x: 200, y: 100)
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
