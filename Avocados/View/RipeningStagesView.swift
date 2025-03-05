//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    } //: LOOP
                } //: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } //: VSTACK
        } //: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
