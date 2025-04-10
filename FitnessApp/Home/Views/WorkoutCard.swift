//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Divakar T R on 10/04/25.
//

import SwiftUI

struct WorkoutCard: View {
    
    @State var workout: Workout
    
    var body: some View {
        HStack {
            Image(systemName: workout.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(spacing: 15) {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.date)
                }
                HStack {
                    Text(workout.duration)
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, imageName: "figure.run", title: "Running", duration: "47 mins", calories: "327 kCal", date: "Apr 10", tintColor: .green))
}
