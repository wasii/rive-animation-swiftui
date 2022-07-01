//
//  HomeView.swift
//  RiveAnimation
//
//  Created by NaheedPK on 01/07/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                content
            }
        }
    }
    
    var content: some View {
        VStack(spacing: 0) {
            Text("Courses")
                .customFont(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(courses) { course in
                        VCard(course: course)
                    }
                }
                .padding(20)
                .padding(.bottom, 10)
            }
            
            Text("Recents")
                .customFont(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            VStack(spacing: 20) {
                ForEach(courseSections) { courseSection in
                    HCard(section: courseSection)
                }
            }
            .padding(20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
