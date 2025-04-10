//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Divakar T R on 09/04/25.
//

import SwiftUI

struct ActivityCard: View {
    
    @State var activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            VStack {
                HStack (alignment: .top) {
                    VStack (alignment: .leading, spacing: 8) {
                        Text(activity.name)
                        Text("Goal \(activity.goal)")
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: activity.imageName)
                        .foregroundColor(activity.tintColor)
                }
                Text(activity.amount)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity (id: 0, name: "Today's Steps", goal: "10, 000", imageName: "figure.walk", amount: "61, 234", tintColor: .green))
}
