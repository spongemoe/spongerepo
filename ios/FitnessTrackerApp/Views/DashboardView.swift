import SwiftUI

struct DashboardView: View {
    @EnvironmentObject private var tracker: TrackerStore

    var body: some View {
        NavigationStack {
            List {
                Section("Kalorien heute") {
                    metricRow(title: "Aufgenommen", value: tracker.todayNutrition.calories, color: .blue)
                    metricRow(title: "Verbrannt", value: tracker.todayBurnedCalories, color: .orange)
                    metricRow(title: "Netto", value: tracker.netCalories, color: tracker.netCalories <= 0 ? .green : .red)

                    Text(tracker.netCalories <= 0
                         ? "Du bist im Kaloriendefizit ✅"
                         : "Aktuell kein Defizit ❗️")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                Section("Makronährstoffe heute") {
                    nutrientRow(label: "Protein", grams: tracker.todayNutrition.protein)
                    nutrientRow(label: "Kohlenhydrate", grams: tracker.todayNutrition.carbs)
                    nutrientRow(label: "Fett", grams: tracker.todayNutrition.fat)
                }
            }
            .navigationTitle("Fitness Tracker")
        }
    }

    private func metricRow(title: String, value: Double, color: Color) -> some View {
        HStack {
            Text(title)
            Spacer()
            Text("\(Int(value)) kcal")
                .foregroundStyle(color)
                .fontWeight(.semibold)
        }
    }

    private func nutrientRow(label: String, grams: Double) -> some View {
        HStack {
            Text(label)
            Spacer()
            Text("\(Int(grams)) g")
        }
    }
}
