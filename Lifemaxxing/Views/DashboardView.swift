import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Dashboard")
                .font(.largeTitle.bold())

            Text("This will follow `LIFEMAXXING OUTLINE/dashboardOutline`.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding(24)
    }
}
