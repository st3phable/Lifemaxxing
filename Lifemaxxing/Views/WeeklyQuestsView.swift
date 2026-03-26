import SwiftUI

struct WeeklyQuestsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Weekly Quests")
                .font(.largeTitle.bold())

            Text("Backed by `LIFEMAXXING OUTLINE/WeeklyQuests/*` and `WeeklyQuests/format`.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding(24)
    }
}
