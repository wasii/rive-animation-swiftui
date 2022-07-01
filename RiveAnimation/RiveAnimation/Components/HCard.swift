//
//  HCard.swift
//  RiveAnimation
//
//  Created by NaheedPK on 01/07/2022.
//

import SwiftUI

struct HCard: View {
    var section: CourseSection
    var body: some View {
        HStack(spacing: 20) {
            VStack (alignment: .leading, spacing: 8) {
                Text(section.title)
                    .customFont(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(section.caption)
            }
            Divider()
            section.image
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: 110)
        .background(section.color)
        .foregroundColor(.white)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//        .padding()
    }
}

struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard(section: courseSections[0])
    }
}
