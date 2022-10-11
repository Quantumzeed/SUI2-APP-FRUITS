//
//  SettingsView.swift
//  Fructus
//
//  Created by Quantum on 3/8/2565 BE.
//

import SwiftUI

struct SettingsView: View {
    // MARK: -  properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - body
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: -  sec1
                    
                    GroupBox(
                        label:
                            SettingsLableView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - sec2
                    
                    GroupBox(label: SettingsLableView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider()
                        
                        Text("if you wish, you can restart the application by toggle the swich in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            Text("Restart".uppercased())
//                            if isOnboarding {
//                                Text("Restarted".uppercased())
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.green)
//
//                            } else {
//                                Text("Restart".uppercased())
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.secondary)
//                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - sec3
                    
                    GroupBox(label: SettingsLableView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Nut")
                        SettingsRowView(name: "Designer", content: "Nut")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "DevWeDo", linkDestination: "devwedo.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@quantum_nutt", linkDestination: "twitter.com/quantum_nutt")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }

                  
                }//VSTACK
                .navigationBarTitle(Text("Setting"), displayMode:  .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        })
                .padding()
            }//:scroll
        }//nav
    }
}

// MARK: - preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
