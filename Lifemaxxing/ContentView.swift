//
//  ContentView.swift
//  Lifemaxxing
//
//  Created by subway-r4t on 3/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: AppDestination? = .dashboard
    @State private var categories: [SkillCategory] = [
        SkillCategory(name: "Mental Health"),
        SkillCategory(name: "Personal Care"),
        SkillCategory(name: "Household & Chores"),
    ]

    var body: some View {
        NavigationSplitView {
            List(selection: $selection) {
                Section("Home") {
                    Label("Dashboard", systemImage: "sparkles")
                        .tag(AppDestination.dashboard as AppDestination?)
                }

                Section("Skills") {
                    Label("Skill Categories", systemImage: "square.grid.2x2")
                        .tag(AppDestination.skillCategories as AppDestination?)
                }

                Section("Quests") {
                    Label("Main Questlines", systemImage: "flag.checkered")
                        .tag(AppDestination.questlines as AppDestination?)
                    Label("Weekly Quests", systemImage: "calendar")
                        .tag(AppDestination.weeklyQuests as AppDestination?)
                }

                Section("Tools") {
                    Label("Shop", systemImage: "bag")
                        .tag(AppDestination.shop as AppDestination?)
                    Label("Map", systemImage: "map")
                        .tag(AppDestination.map as AppDestination?)
                }
            }
            .frame(minWidth: 220)
        } detail: {
            Group {
                switch selection ?? .dashboard {
                case .dashboard:
                    DashboardView()
                case .skillCategories:
                    SkillCategoriesView(categories: categories)
                case .questlines:
                    QuestlinesView()
                case .weeklyQuests:
                    WeeklyQuestsView()
                case .shop:
                    ShopView()
                case .map:
                    MapView()
                }
            }
            .frame(minWidth: 640, minHeight: 420)
        }
    }
}

