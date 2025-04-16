//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Divakar T R on 10/04/25.
//


import SwiftUI

class HomeViewModel: ObservableObject {
    
    let healthManager = HealthManager.shared
    
    @Published var calories: Int = 0
    @Published var activeTime: Int = 0
    @Published var standTime: Int = 0
    
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
    
    init () {
        
        Task {
            do {
                try await healthManager.requestHealthKitAccess()
                fetchTodayCaloriesBurned()
                fetchTodayExerciseTime()
                fetchTodayStandHours()
            } catch {
                print(error.localizedDescription)
            }
        }
        
        
    }
    
    func fetchTodayCaloriesBurned() {
     
        healthManager.fetchTodayCaloriesBurned { result in
            switch result {
            case .success(let calories):
                DispatchQueue.main.async {
                    self.calories = Int(calories)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    func fetchTodayExerciseTime() {
        
        healthManager.fetchTodayExerciseTime { result in
            switch result {
            case .success(let exercise):
                DispatchQueue.main.async {
                    self.activeTime = Int(exercise)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    func fetchTodayStandHours() {
        
        healthManager.fetchTodayStandHours { result in
            switch result {
            case .success(let hours):
                DispatchQueue.main.async {
                    self.standTime = hours
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
}
