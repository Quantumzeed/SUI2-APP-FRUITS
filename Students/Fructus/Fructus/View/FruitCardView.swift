//
//  FruitCardView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - properties
    var fruit: Fruit
    
    @State private var isAnimaing: Bool = false
    
    // MARK: - body
    
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                // fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 8, y: 6)
                    .scaleEffect(isAnimaing ? 1.0 : 0.6)
                
                // fruit: title
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //fruit:Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //Button: Satrt
                StartButtonView()
            }//: VSTACK
        }//: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimaing = true
            }
        }
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
       
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
