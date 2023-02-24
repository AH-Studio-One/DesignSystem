//
//  RemoteDesignSystemLoader.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

final class RemoteDesignSystemLoader: DesignSystemLoader {
    private let url: URL
    private let client: HTTPClient

    enum Error: Swift.Error {
        case connectivity
        case invalidData
    }

    init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }

    func load(completion: @escaping (DesignSystemLoader.Result) -> Void) {
        client.get(from: url) { [weak self] response in
            guard self != nil else { return }

            switch response {
            case let .success((data, response)):
                completion(DesignSystemMapper.map(data, from: response))
            case .failure:
                completion(.failure(RemoteDesignSystemLoader.Error.connectivity))
            }
        }
    }
}
