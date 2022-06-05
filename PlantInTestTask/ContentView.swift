//
//  ContentView.swift
//  PlantInTestTask
//
//  Created by Ivan Melnyk on 05.06.2022.
//

import SwiftUI
import UIKit // only for tabview customization

struct ContentView: View {
    
    @AppStorage("onboardScreenShown")
    var onboardScreenShown: Bool = false
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "TabBarColor")
        UITabBar.appearance().backgroundColor = UIColor(named: "TabBarColor")
        
        let itemAppearance = UITabBarItemAppearance()
       
        itemAppearance.selected.iconColor = UIColor(named: "PurpleGradientStart")
        let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(named: "TabBarColor")
            appearance.stackedLayoutAppearance = itemAppearance
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        if onboardScreenShown {
            MainTabView()
        } else {
            StartScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MainTabView: View {
    var body: some View {
        ZStack {
            Color("BackgroundBlack")
                .ignoresSafeArea()
            TabView {
                ProfileView()
                    .tabItem {
                        Image("Category")
                    }
                MarketView()
                    .tabItem {
                        Image("Chart")
                    }
            }
        }
    }
}
