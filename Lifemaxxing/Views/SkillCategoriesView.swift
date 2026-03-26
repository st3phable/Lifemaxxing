import SwiftUI

struct SkillCategoriesView: View {
    let categories: [SkillCategory]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Skill Categories")
                .font(.largeTitle.bold())

            if categories.isEmpty {
                Text("No categories yet.")
                    .foregroundStyle(.secondary)
            } else {
                List(categories) { category in
                    Text(category.name)
                }
                .frame(minHeight: 240)
            }

            Spacer()
        }
        .padding(24)
    }
}
