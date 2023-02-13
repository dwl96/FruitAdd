//
//  ContentView.swift
//  FruitAdd
//
//  Created by Dan Lewis on 13/02/2023.
//

import SwiftUI

struct FruitsListView: View {
    @State private var isSheetShowing = false
    private var fruits: [Fruit] =
    [
        .init(name: "Apple", color: .red),
        .init(name: "Banana", color: .yellow)
    ]
    
    var body: some View {
        NavigationStack {
            List(fruits) { fruit in
                VStack {
                    Text(fruit.name)
                        .foregroundColor(fruit.color)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        isSheetShowing = true
                    }
                }
            }
            .sheet(isPresented: $isSheetShowing) {
                NavigationStack {
                    AddFruitView()
                        .navigationTitle("Add Fruit")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button("Cancel") {
                                    isSheetShowing = false
                                }
                            }
                            
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Done") {
                                    isSheetShowing = false
                                }
                            }
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
