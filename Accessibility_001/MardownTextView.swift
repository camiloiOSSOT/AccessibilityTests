//
//  MardownTextView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 9/4/24.
//

import SwiftUI

struct MardownTextView: View {
    let text = "Hello, **World!**"
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello, **World!**")
            
            Text(text)
            
            Divider()
            
            Text(.init(text))
            
            Text(LocalizedStringKey("Hello, **World!**"))
            
            Text(LocalizedStringKey(stringLiteral: "Hello, **World!**"))
            
            Divider()
            
            Text(LocalizedStringKey(text))
            
            Text(LocalizedStringKey(stringLiteral: text))
        }
    }
}

#Preview {
    MardownTextView()
}
