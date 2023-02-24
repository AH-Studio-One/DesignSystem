//
//  ContentView.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(projectPalette.primary)
            Text(viewModel.quote)
                .font(projectFont.h1)
                .foregroundColor(projectPalette.secondary)
            Text(viewModel.author)
                .font(projectFont.body1)
                .foregroundColor(projectPalette.tertiary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewViewModel(quote: "The first and beset victory is to conquer self", author: "Plato"))
    }
}
