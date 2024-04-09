//
//  ReadingLabelWithSomeOutputsView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ReadingLabelWithSomeOutputsView: View {
//    init() {
//        UIScrollView.appearance().bounces = true
//    }
    
    var body: some View {
        ScrollView {
            Button ("John Fitzgerald Kennedy") {
                print("Button tapped")
            }
            .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
        }
        .scrollBounceBehavioriOS15(.always)
//        .onAppear {
//            UIScrollView.appearance().bounces = true
//        }
    }
}

#Preview {
    ReadingLabelWithSomeOutputsView()
}
