import SwiftUI

struct QuestlinesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Main Questlines")
                .font(.largeTitle.bold())

            Text("Academia (BrainMaxxing), FinMaxxing, FitMaxxing.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding(24)
    }
}
