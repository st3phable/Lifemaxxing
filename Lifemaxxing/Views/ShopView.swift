import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Shop")
                .font(.largeTitle.bold())

            Text("Uses per-category wishlists; stardust unlocks items.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding(24)
    }
}
