//
//  AppView.swift
//  Avocados
//
//  Created by Elexoft on 28/02/2025.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            AvocadosView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        } //: TAB
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
