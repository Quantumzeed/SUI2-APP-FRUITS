//
//  StartButtonView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        } //: Button
        .accentColor(Color.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
    }
}

// MARK: - preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
