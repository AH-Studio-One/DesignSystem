//
//  LocalDesignItem.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

public struct LocalDesignItem: Hashable {
    public let font: [RemoteFont]
    public let pallete: [RemotePallete]

    public init(font: [RemoteFont], pallete: [RemotePallete]) {
        self.font = font
        self.pallete = pallete
    }
}
