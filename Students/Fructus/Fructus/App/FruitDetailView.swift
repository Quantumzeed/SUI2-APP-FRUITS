//
//  FriutDetailView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - properties
    
    var fruit: Fruit
    // MARK: - body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    //: Header
                    FruitHeaderView(fruits: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //: Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //nutrition
                        FruitNutrientsView(fruit: fruit)
                        
                        //subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                        
                        
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    //.frame(maxWidth: 640, alignment: .center)
                }//:VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//:NAV
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
