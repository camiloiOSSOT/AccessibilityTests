//
//  ContentView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(examples, id: \.name) { example in
                NavigationLink(example.name) {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            example.view
                                .padding(8)
                                .navigationBarTitle(example.name)
                        }
                    }
                }
            }
            .navigationBarTitle(
                Text("Examples")
            )
        }
    }
}

#Preview {
    ContentView()
}


// MARK: Model

/// A model-level representation of an example.
struct Example {
    var name: String
    var view: AnyView

    init<Content: View>(
        _ name: String,
        @ViewBuilder content: @escaping (() -> Content)
    ) {
        self.name = name
        self.view = AnyView(content())
    }
}

/// The list of examples to show.
@MainActor
let examples = [
    Example("Image with Actions") { ImageWithActionView() },
    Example("Reading Group") { ReadingGroupDataView() },
    Example("Component Action") { ReadingValuesControlsView() },
    Example("Scroll always") { ReadingLabelWithSomeOutputsView() },
    Example("Scroll onBaseSize") { ScrollAccessView() },
    Example("Fonts") { FontCustomDynamicSizeView() },
    Example("Text with Markdown") { MardownTextView() }
]
