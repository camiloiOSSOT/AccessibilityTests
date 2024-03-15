//
//  ReadingValuesControlsView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ReadingValuesControlsView: View {
    @State private var value = 10
    
    var body: some View {
        VStack {
            Text("Value: \(value)")
            
            Button("Increment") {
                value += 1
            }
            
            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            @unknown default:
                print("not handled")
            }
        }
    }
}

#Preview {
    ReadingValuesControlsView()
}
