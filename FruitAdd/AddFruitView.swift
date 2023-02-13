//
//  AddFruitView.swift
//  FruitAdd
//
//  Created by Dan Lewis on 13/02/2023.
//

import SwiftUI

struct AddFruitView: View {
    @State private var name: String = ""
    @State private var color: Color = .white
    var body: some View {
        Form {
            TextField("Name", text: $name)
            ColorPicker("Color", selection: $color)
        }
    }
}

struct AddFruitView_Previews: PreviewProvider {
    static var previews: some View {
        AddFruitView()
    }
}
