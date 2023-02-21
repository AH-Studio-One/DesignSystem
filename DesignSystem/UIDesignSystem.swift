//
//  UIDesignSystem.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

struct UIDesignSystem: Decodable {
    let designItem: [APIDesignItem]
}

struct RemoteDesignItem: Decodable {
    let font: [RemoteFont]
    let pallete: [RemotePallete]
}

struct RemoteFont: Decodable {
    let name, title: String
    let size: Int
}

struct RemotePallete: Decodable {
    let name: String
    let color, title: String?
}
