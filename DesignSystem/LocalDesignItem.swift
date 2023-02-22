//
//  LocalDesignItem.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

public struct LocalDesignItem: Hashable {
    public let font: [LocalFont]
    public let pallete: [LocalPallete]

    public init(font: [LocalFont], pallete: [LocalPallete]) {
        self.font = font
        self.pallete = pallete
    }
}
public struct LocalFont: Hashable {
    public static func == (lhs: LocalFont, rhs: LocalFont) -> Bool {
        lhs.name == rhs.name
    }

    let name: LocalFont.Name
    let title: String
    let size: Double

    enum Name: String {
        case h1, h2, h3, h4, h5, body1, body2, body3
    }
}

public struct LocalPallete: Hashable {
    let name: LocalPallete.Name
    let color: String

    enum Name: String {
        case primary, secondary
    }
}
