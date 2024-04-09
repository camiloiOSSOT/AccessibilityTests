//
//  Accessibility_001App.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

@main
struct Accessibility_001App: App {
//    init() {
//        UIScrollView.appearance().bounces = false
//    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

public enum ScrollBounceBehavioriOS15 {
    case automatic
    case always
    case basedOnSize
}

extension View {
    @ViewBuilder func scrollBouncesBehavioriOS15(_ behavior: ScrollBounceBehavioriOS15, axes: Axis.Set = [.vertical]) -> some View {

        if #available(iOS 16.4, *) {
            var bouncesType: ScrollBounceBehavior = .always
            switch behavior {
            case .automatic:
                bouncesType = .automatic
            case .always:
                bouncesType = .always
            case .basedOnSize:
                bouncesType = .basedOnSize
            }
            return self.scrollBounceBehavior(bouncesType, axes: axes)
        } else {
            // Fallback on earlier versions
            return self
        }

    }
}
