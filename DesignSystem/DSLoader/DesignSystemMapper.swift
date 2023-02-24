//
//  UIDesignSystem.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
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

public struct RemotePallete: Decodable, Hashable {
    let name: String
    let color: String

    enum Name: String, Decodable {
        case primary, secondary
    }
}

public enum DesignSystemMapper {
    public struct Root: Decodable {
        let items: [RemoteDesignItem]

        var identities: [LocalDesignItem] {
            return items.map { $0.identity }
        }
    }

    public struct RemoteDesignItem: Decodable {
        let font: [RemoteFont]
        let pallete: [RemotePallete]

        var identity: LocalDesignItem {
            return LocalDesignItem(font: font.map{$0}, pallete: pallete.map{$0})
        }
    }

    private static var OK_200: Int { return 200 }

    static func map(_ data: Data, from response: HTTPURLResponse) -> DesignSystemLoader.Result {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(RemoteDesignSystemLoader.Error.invalidData)
        }
        return .success(root.identities)
    }
}
