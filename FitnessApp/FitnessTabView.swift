//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Divakar T R on 08/04/25.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .systemMint
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.label]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
