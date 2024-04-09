//
//  ContentView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                ImageWithActionView()
                    .tabItem { Label(
                        title: { Text("First") },
                        icon: { Image(systemName: "1.circle") }
                    ) }
                
                ReadingGroupDataView()
                    .tabItem { Label(
                        title: { Text("Second") },
                        icon: { Image(systemName: "2.circle") }
                    ) }
                
                ReadingValuesControlsView()
                    .tabItem { Label(
                        title: { Text("Third") },
                        icon: { Image(systemName: "3.circle") }
                    ) }
                
                ReadingLabelWithSomeOutputsView()
                    .tabItem { Label(
                        title: { Text("Four") },
                        icon: { Image(systemName: "4.circle") }
                    ) }
                
                ScrollAccessView()
                    .tabItem { Label(
                        title: { Text("Five") },
                        icon: { Image(systemName: "5.circle") }
                    ) }
                
                FontCustomDynamicSizeView()
                    .tabItem { Label(
                        title: { Text("Six") },
                        icon: { Image(systemName: "6.circle") }
                    ) }
            }
//            .toolbarBackground(.automatic, for: .tabBar)
//            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
