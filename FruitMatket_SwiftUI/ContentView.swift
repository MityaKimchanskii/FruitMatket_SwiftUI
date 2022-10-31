//
//  ContentView.swift
//  FruitMatket_SwiftUI
//
//  Created by Mitya Kim on 10/30/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruitsArray: [Fruit] = fruits
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsArray.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//: Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruitsArray: fruits)
    }
}
