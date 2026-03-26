import SwiftUI

struct MapView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Map")
                .font(.largeTitle.bold())

            Text("Calendar/list of all deadline-bearing items.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding(24)
    }
}
