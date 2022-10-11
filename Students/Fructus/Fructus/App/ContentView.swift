//
//  ContentView.swift
//  Fructus
//
//  Created by Quantum on 2/8/2565 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    // MARK: - body
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination:FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }//loop
            }//: list
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//button
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )//navitem
        }//: nav
        //.navigationViewStyle(StackNavigationViewStyle())
        
    }
}
// MARK: - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewInterfaceOrientation(.portrait)
    }
}
