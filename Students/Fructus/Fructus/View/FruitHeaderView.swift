//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: -  properties
    @State private var isAnimatingImage: Bool = false
    
    var fruits: Fruit
    // MARK: - body
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//:ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}
// MARK: - preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
