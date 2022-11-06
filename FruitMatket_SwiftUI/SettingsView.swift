//
//  SettingsView.swift
//  FruitMatket_SwiftUI
//
//  Created by Mitya Kim on 10/30/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 5)
                        HStack(alignment: .center, spacing: 11) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 5)
                        
                        Text("If you wish, you can restart the application toggle the switch in this box.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingRowView(name: "Developer", content: "Dmitrii / Dima")
                        SettingRowView(name: "Designer", content: "Dmitrii Kim")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.1")
                    }//: Box
                   
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: ScrollView
        }//: NavigationView
        
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
