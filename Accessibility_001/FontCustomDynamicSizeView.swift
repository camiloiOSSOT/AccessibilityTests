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

        }
        .scrollBouncesBehavioriOS15(.basedOnSize)
    }
}

#Preview("Automatic") {
    FontCustomDynamicSizeView()
}
