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
    
    var mockActivities = [
        Activity (id: 0, name: "Today's Steps", goal: "10, 000", imageName: "figure.walk", amount: "61, 234", tintColor: .green),
        Activity (id: 1, name: "Today's Steps", goal: "1, 000", imageName: "figure.walk", amount: "812", tintColor: .green),
        Activity (id: 2, name: "Today's Steps", goal: "12, 000", imageName: "figure.walk", amount: "9,812", tintColor: .green),
        Activity (id: 3, name: "Today's Steps", goal: "50, 000", imageName: "figure.walk", amount: "55, 812", tintColor: .green),
        ]
    
    var mockWorkouts = [
        Workout(id: 0, imageName: "figure.run", title: "Running", duration: "47 mins", calories: "327 kCal", date: "Apr 10", tintColor: .green),
        Workout(id: 1, imageName: "figure.run", title: "Strength Training", duration: "47 mins", calories: "327 kCal", date: "Apr 10", tintColor: .red),
        Workout(id: 2, imageName: "figure.walk", title: "Walk", duration: "47 mins", calories: "327 kCal", date: "Apr 10", tintColor: .purple),
        Workout(id: 3, imageName: "figure.run", title: "Running", duration: "47 mins", calories: "327 kCal", date: "Apr 10", tintColor: .cyan),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack (alignment: .leading) {
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
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        Spacer()
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
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
