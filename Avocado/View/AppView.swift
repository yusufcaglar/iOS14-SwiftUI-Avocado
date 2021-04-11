//
//  AppView.swift
//  Avocado
//
//  Created by Yusuf Çağlar on 11.04.2021.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadoView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocado")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipe")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
