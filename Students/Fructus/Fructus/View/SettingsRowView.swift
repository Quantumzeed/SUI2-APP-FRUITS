//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Quantum on 3/8/2565 BE.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - body
    var body: some View {
        VStack {
            Divider()
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil){
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination:URL(string: "https://\(linkDestination!)")!)
                    Image(systemName:"arrow.up.right.square").foregroundColor(.pink)
                } else  {
                    EmptyView()
                }
                
            }
        }
    }
}
// MARK: - preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Nut")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website", linkLabel: "Devwedo", linkDestination: "devwedo.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
        
    }
}
