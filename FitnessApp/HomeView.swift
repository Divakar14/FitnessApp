//
//  HomeView.swift
//  FitnessApp
//
//  Created by Divakar T R on 08/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                HStack {
                    Spacer()
                    VStack {
                        HomeHistoricData(title: "Calories", value: "123 kcal", indicationColor: .red)
                        HomeHistoricData(title: "Active", value: "52 Mins", indicationColor: .green)
                        HomeHistoricData(title: "Stand", value: "8 hours", indicationColor: .blue)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct HomeHistoricData: View {
    
    var title: String
    var value: String
    var indicationColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.callout)
                .fontWeight(.bold)
                .foregroundColor(indicationColor)
            Text(value)
                .bold()
        }
        .padding(.bottom)
    }
}
