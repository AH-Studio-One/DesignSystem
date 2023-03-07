//
//  UIDesignSystem.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

enum DesignSystemMapper {
    private struct Root: Decodable {
        let items: [RemoteDesignItem]

        var identities: [LocalDesignItem] {
            return items.map { $0.identity }
        }
    }

    private struct RemoteDesignItem: Decodable {
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
