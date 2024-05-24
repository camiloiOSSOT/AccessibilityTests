//
//  FontCustomDynamicSizeView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 9/4/24.
//

import SwiftUI

struct FontCustomDynamicSizeView: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!")
                .font(.title)

            Text("Hello, World!")
                .font(.customRegularTitle)
            
            Text("Hello, World!")
                .font(.customBoldTitle)

            Divider()

            Text("Hello, World!")
                .font(.body)

            Text("Hello, World!")
                .font(.customRegularBody)
            
            Text("Hello, World!")
                .font(.customBoldBody)

            Divider()
            
            Text("Hello, World!")
                .font(.caption2)

            Text("Hello, World!")
                .font(.customRegularCaption)
            
            Text("Hello, World!")
                .font(.customBoldCaption)
            
            Divider()
            
            Text("Size: \(UIFont.customFont?.pointSize)\nLineHeight: \(UIFont.customFont?.lineHeight)")
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.customFont)
                //.environment(\._lineHeightMultiple, 0.5)
                .lineSpacing(-22.0)

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.title.leading(.tight))
                .lineSpacing(-10.0)

            
        }
        .scrollBounceBehavioriOS15(.basedOnSize)
    }
}

#Preview("Automatic") {
    FontCustomDynamicSizeView()
}
