//
//  RemotePallete.swift
//  DesignSystem
//
//  Created by A H on 2023-02-24.
//

import Foundation

public struct RemotePallete: Decodable, Hashable {
    let name: String
    let color: String

    enum Name: String, Decodable {
        case primary, secondary
    }
}
