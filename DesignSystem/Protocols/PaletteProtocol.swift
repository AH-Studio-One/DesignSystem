//
//  Palette.swift
//  Prototype

import SwiftUI

protocol PaletteProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
    var attention: Color { get }
    var clear: Color { get }
    var background: Color { get }
}
