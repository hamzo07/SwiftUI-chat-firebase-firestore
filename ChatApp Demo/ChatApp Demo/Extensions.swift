//
//  Extensions.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import Foundation
import SwiftUI

extension Font {
    static func ralewayBold(withSize size: CGFloat) -> Font {
        return Font.custom("Raleway-Bold", size: size)
    }
    
    static func ralewaySemiBold(withSize size: CGFloat) -> Font {
        return Font.custom("Raleway-SemiBold", size: size)
    }
    
    static func ralewayMedium(withSize size: CGFloat) -> Font {
        return Font.custom("Raleway-Medium", size: size)
    }
    
    static func ralewayRegular(withSize size: CGFloat) -> Font {
        return Font.custom("Raleway-Regular", size: size)
    }
}

extension Color {
    static var customGray: Color {
        Color(uiColor: .systemGray4)
    }
    
    static var customPeach: Color {
        Color(uiColor: UIColor(red: 1.00, green: 0.85, blue: 0.77, alpha: 1.00))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner) -> some View {
        clipShape(RoundedCorner(redius: radius, corner: corner))
    }
}

struct RoundedCorner: Shape {
    var redius: CGFloat = .infinity
    var corner: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path  = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: .init(width: redius, height: redius))
        return Path(path.cgPath)
    }
}
