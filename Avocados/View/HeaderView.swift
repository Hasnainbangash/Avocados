//
//  HeaderView.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text("Avocados are a powerhouse ingredient at any meal for anyone.")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                } //: VSTACK
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            } //: HSTACK
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: 75)
        } //: ZSTACK
        .frame(width: 480, height: 320, alignment: .center)
    }
}

// MARK: - PREVIEW

#Preview {
    HeaderView()
        .previewLayout(.sizeThatFits)
}
