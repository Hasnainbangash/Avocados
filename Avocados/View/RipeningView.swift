//
//  RipeningView.swift
//  Avocados
//
//  Created by Elexoft on 05/03/2025.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Image("avocado-ripening-1")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                // TITLE
                // DESCRIPTION
                // RIPENESS
                // INSTRUCTION
            }
        } //: VSTACK
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - REVIEW

#Preview {
    RipeningView()
}
