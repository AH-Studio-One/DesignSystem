//
//  DesignSystemLoader.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation

protocol DesignSystemLoader {
    typealias Result = Swift.Result<[DesignIdentity], Error>

    func load(completion: @escaping (Result) -> Void)
}
