//
//  AccessiblityFont.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 9/4/24.
//

import SwiftUI

extension Font {
    private static let familyFontBold       = "Palanquin-Bold"
    private static let familyFontSemi       = "Palanquin-SemiBold"
    private static let familyFontMedium     = "Palanquin-Medium"
    private static let familyFontRegular    = "Palanquin-Regular"
    private static let familyFontLight      = "Palanquin-Light"
    
    static let customRegularTitle   = Font.custom(Font.familyFontRegular, size: 30, relativeTo: .title)
    static let customRegularBody    = Font.custom(Font.familyFontRegular, size: 20, relativeTo: .body)
    static let customRegularCaption = Font.custom(Font.familyFontRegular, size: 9, relativeTo: .caption2)
    
    static let customBoldTitle      = Font.custom(Font.familyFontBold, size: 30, relativeTo: .title)
    static let customBoldBody       = Font.custom(Font.familyFontBold, size: 20, relativeTo: .body)
    static let customBoldCaption    = Font.custom(Font.familyFontBold, size: 9, relativeTo: .caption2)
    
    static let customFont = Font.custom(UIFont.customFont!.fontName, size: UIFont.customFont!.pointSize, relativeTo: .title)
}


extension UIFont {
    private static let familyFontBold       = "Palanquin-Bold"
    
    static let customFont = UIFont(name: familyFontBold, size: 30)
}
