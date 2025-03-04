//
//  FactModel.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
