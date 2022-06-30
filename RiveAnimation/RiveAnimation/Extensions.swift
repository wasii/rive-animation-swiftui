//
//  Extensions.swift
//  RiveAnimation
//
//  Created by NaheedPK on 30/06/2022.
//

import SwiftUI

struct RounderCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
