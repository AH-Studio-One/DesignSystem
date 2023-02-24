//
//  PrototypeFontguide.swift
//  DesignSystem
//
//  Created by A H on 2023-02-21.
//

import Foundation
import SwiftUI

final class PrototypeFontguide: FontguideProtocol {
    var h1: Font = Font.headline

    var h2: Font = Font.subheadline

    var h3: Font = Font.subheadline

    var h4: Font = Font.subheadline

    var h5: Font = Font.subheadline

    var body1: Font = Font.body

    var body2: Font = Font.body

    var body3: Font = Font.body

    init(fonts: [RemoteFont]? = nil) {
        guard let fonts = fonts else { return }
        
        for val in fonts {
            switch val.name {
            case .h1:
                h1 = Font.custom(val.title, size: val.size)
            case .h2:
                h2 = Font.custom(val.title, size: val.size)
            case .h3:
                h3 = Font.custom(val.title, size: val.size)
            case .h4:
                h4 = Font.custom(val.title, size: val.size)
            case .h5:
                h5 = Font.custom(val.title, size: val.size)
            case .body1:
                body1 = Font.custom(val.title, size: val.size)
            case .body2:
                body2 = Font.custom(val.title, size: val.size)
            case .body3:
                body3 = Font.custom(val.title, size: val.size)
            }
        }
    }
}
