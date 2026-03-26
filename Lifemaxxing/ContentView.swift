//
//  ContentView.swift
//  Lifemaxxing
//
//  Created by subway-r4t on 3/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: AppDestination = .dashboard
    @State private var categories: [SkillCategory] = [
        SkillCategory(name: "Mental Health"),
        SkillCategory(name: "Personal Care"),
        SkillCategory(name: "Household & Chores"),
    ]

    var body: some View {
        NavigationSplitView {
            List {
                Section("Home") {
                    sidebarRow(title: "Dashboard", systemImage: "sparkles", destination: .dashboard)
                }

                Section("Skills") {
                    sidebarRow(title: "Skill Categories", systemImage: "square.grid.2x2", destination: .skillCategories)
                }

                Section("Quests") {
                    sidebarRow(title: "Main Questlines", systemImage: "flag.checkered", destination: .questlines)
                    sidebarRow(title: "Weekly Quests", systemImage: "calendar", destination: .weeklyQuests)
                }

                Section("Tools") {
                    sidebarRow(title: "Shop", systemImage: "bag", destination: .shop)
                    sidebarRow(title: "Map", systemImage: "map", destination: .map)
                }
            }
            .listStyle(.sidebar)
            .navigationSplitViewColumnWidth(min: 220, ideal: 240)
        } detail: {
            Group {
                switch selection {
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

    @ViewBuilder
    private func sidebarRow(title: String, systemImage: String, destination: AppDestination) -> some View {
        let isSelected = selection == destination
        Button {
            selection = destination
        } label: {
            Label(title, systemImage: systemImage)
                .frame(maxWidth: .infinity, alignment: .leading)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .foregroundStyle(isSelected ? Color.accentColor : .primary)
        .listRowBackground(
            RoundedRectangle(cornerRadius: 6, style: .continuous)
                .fill(isSelected ? Color.accentColor.opacity(0.14) : Color.clear)
                .padding(.vertical, 2)
        )
    }
}

