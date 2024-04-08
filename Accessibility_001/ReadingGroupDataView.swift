//
//  ReadingGroupDataView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ReadingGroupDataView: View {
    var body: some View {
        ZStack {
            Image(decorative: "character")
                .resizable()
                .scaledToFit()
                .blur(radius: 3.0)
                .accessibilityHidden(true)
            
            VStack {
                VStack{
                    Text("Your score is")
                    Text("1000")
                }
                .font(.largeTitle)
                
                VStack{
                    Text("Your score is")
                    Text("1000")
                }
                .font(.title)
                
                .accessibilityElement(children: .combine)
                
                VStack{
                    Text("Your score is")
                    Text("1000")
                }
                .font(.body)
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Your score is 1000")
                
                VStack{
                    Text("Your score is")
                    Text("1000")
                }
                .font(.caption2)
                .accessibilityElement()
                .accessibilityLabel("Your score is 1000")
            }
        }
    }
}

#Preview {
    ReadingGroupDataView()
}
