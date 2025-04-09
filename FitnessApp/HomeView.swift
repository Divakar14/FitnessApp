//
//  HomeView.swift
//  FitnessApp
//
//  Created by Divakar T R on 08/04/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var activeTime: Int = 52
    @State var standTime: Int = 8
    
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
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        ProgressCircleView(progress: $activeTime, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $standTime, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
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
