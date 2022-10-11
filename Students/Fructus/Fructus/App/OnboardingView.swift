//
//  OnboardingView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
