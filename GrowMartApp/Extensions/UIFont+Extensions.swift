//
//  UIFont+Extensions.swift
//  GrowMartApp
//
//  Created by Eduardo Junior on 02/09/22.
//

import UIKit

extension UIFont {
    public enum NunitoStyle: String {
        case extraLight = "ExtraLight"
        case light = "Light"
        case regular = "Regular"
        case medium = "Medium"
        case semiBold = "SemiBold"
        case bold = "Bold"
        case extraBold = "ExtraBold"
        case black = "Black"
        case extraLightItalic = "ExtraLightItalic"
        case lightItalic = "LightItalic"
        case italic = "Italic"
        case mediumItalic = "MediumItalic"
        case semiBoldItalic = "SemiBoldItalic"
        case boldItalic = "BoldItalic"
        case extraBoldItalic = "ExtraBoldItalic"
        case blackItalic = "BlackItalic"
    }

    static func nunito(style: NunitoStyle = .regular, size: CGFloat) -> UIFont {
        UIFont(name: "Nunito-Italic-VariableFont_wght", size: size)!
    }
}
