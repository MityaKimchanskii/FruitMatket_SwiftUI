//
//  SettingRowView.swift
//  FruitMatket_SwiftUI
//
//  Created by Mitya Kim on 11/6/22.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview
struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "Dmitrii / Dima")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
