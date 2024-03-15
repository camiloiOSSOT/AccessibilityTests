//
//  ImageWithActionView.swift
//  Accessibility_001
//
//  Created by Camilo Plaza on 15/3/24.
//

import SwiftUI

struct ImageWithActionView: View {
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labelsPictures = [
        "tulips",
        "frozen tree buds",
        "sunflowers",
        "fireworks"
    ]
    
    var randomInt: Int {
        Int.random(in: 0...3)
    }
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        VStack {
            image_with_button_current
            image_with_button_accessibility_001
            image_with_button_accessibility_002
            image_with_button_accessibility_003
            image_with_button_future
        }
        .padding()
    }
    
    var image_with_button_current: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = randomInt
            }
    }
    
    var image_with_button_accessibility_001: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = randomInt
            }
            .accessibilityLabel(labelsPictures[selectedPicture])
    }
    
    var image_with_button_accessibility_002: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = randomInt
            }
            .accessibilityLabel(labelsPictures[selectedPicture])
            .accessibilityAddTraits(.isButton)
    }
    
    var image_with_button_accessibility_003: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = randomInt
            }
            .accessibilityLabel(labelsPictures[selectedPicture])
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
    }
    
    var image_with_button_future: some View {
        Button {
            selectedPicture = randomInt
        } label: {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labelsPictures[selectedPicture])
    }

}

#Preview {
    ImageWithActionView()
}
