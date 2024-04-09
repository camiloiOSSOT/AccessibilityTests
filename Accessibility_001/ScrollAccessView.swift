//
//  ScrollAccessView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 8/4/24.
//

import SwiftUI

struct ScrollAccessView: View {
    private var maxElement: Int = 50
    
//    init() {
//        UIScrollView.appearance().bounces = false
//    }
    
    var body: some View {
        ScrollView {
            ForEach((1...maxElement), id: \.self) { idx in
                Text("Hello, World \(idx)!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
            }
        }
        .scrollBouncesBehavioriOS15(.basedOnSize)
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            Button {
                print("logout tapped")
            } label: {
                Text("Logout")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .background(.yellow)
        })
//        .contentMargins(.top, 1)
//        .containerRelativeFrame([.horizontal, .vertical])
        .background(.purple)
//        .refreshable {
//            print("capv")
//        }

//        .onAppear {
//            UIScrollView.appearance().bounces = false
//        }
//        .onDisappear {
//            UIScrollView.appearance().bounces = true
//        }
    }
}

#Preview {
    ScrollAccessView()
}
