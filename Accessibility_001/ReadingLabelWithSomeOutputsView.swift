//
//  ReadingLabelWithSomeOutputsView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ReadingLabelWithSomeOutputsView: View {
    var body: some View {
        Button ("John Fitzgerald Kennedy") {
            print("Button tapped")
        }
        .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
    }
}

#Preview {
    ReadingLabelWithSomeOutputsView()
}
