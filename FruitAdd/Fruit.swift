//
//  Fruit.swift
//  FruitAdd
//
//  Created by Dan Lewis on 13/02/2023.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
}
