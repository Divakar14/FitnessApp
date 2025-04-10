//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Divakar T R on 10/04/25.
//


import SwiftUI

class HomeViewModel: ObservableObject {
    
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
    
    @State var calories: Int = 123
    @State var activeTime: Int = 52
    @State var standTime: Int = 8
    
}
