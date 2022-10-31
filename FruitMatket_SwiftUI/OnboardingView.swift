//
//  OnboardingView.swift
//  FruitMatket_SwiftUI
//
//  Created by Mitya Kim on 10/30/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruitsArray: [Fruit] = fruits
    
    // MARK: - Body
    var body: some View {
        
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruitsArray: fruits)
    }
}
