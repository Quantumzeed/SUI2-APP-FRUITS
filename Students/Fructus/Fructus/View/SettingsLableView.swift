//
//  SettingsLableView.swift
//  Fructus
//
//  Created by Quantum on 3/8/2565 BE.
//

import SwiftUI

struct SettingsLableView: View {
    // MARK: - properties
    
    var labelText: String
    var labelImage: String
    
    // MARK: - body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }//HSTACK
    }
}
// MARK: - preview
struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
