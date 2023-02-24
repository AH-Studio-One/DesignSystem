//
//  DesignSystemApp.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import SwiftUI

@main
struct DesignSystemApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewViewModel(quote: "The first and beset victory is to conquer self", author: "Plato"))
        }
    }
}
