//
//  ContentViewViewModel.swift
//  DesignSystem
//
//  Created by A H on 2023-02-24.
//

import Foundation

final class ContentViewViewModel: ObservableObject {
    var quote: String
    var author: String

    init(quote: String, author: String) {
        self.quote = quote
        self.author = author
    }
}
