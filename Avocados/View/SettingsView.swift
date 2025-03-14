//
//  SettingsView.swift
//  Avocados
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            } //: VSTACK
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifications")
                    } //: TOGGLE
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    } //: TOGGLE
                } //: SECTION
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        } //: HSTACK
                        
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        } //: HSTACK
                        
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("John / Jane")
                        } //: HSTACK
                        
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        } //: HSTACK
                        
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        } //: HSTACK
                        
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        } //: HSTACK
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        } //: HSTACK
                    }
                } //: SECTION
            } //: FORM
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsView()
}
