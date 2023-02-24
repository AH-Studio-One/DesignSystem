//
//  RemoteFont.swift
//  DesignSystem
//
//  Created by A H on 2023-02-24.
//

import Foundation

public struct RemoteFont: Decodable, Hashable {
    let name: Name
    let title: String
    let size: Double

    enum Name: String, Decodable {
        case h1, h2, h3, h4, h5, body1, body2, body3
    }
}
