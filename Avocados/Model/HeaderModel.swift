//
//  HeaderModel.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
