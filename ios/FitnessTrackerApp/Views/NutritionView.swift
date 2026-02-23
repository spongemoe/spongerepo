import SwiftUI

struct NutritionView: View {
    @EnvironmentObject private var tracker: TrackerStore

    @State private var mealName = ""
    @State private var calories = 500.0
    @State private var protein = 30.0
    @State private var carbs = 50.0
    @State private var fat = 20.0

    var body: some View {
        NavigationStack {
            List {
                Section("Mahlzeit hinzufügen") {
                    TextField("Name", text: $mealName)
                    Stepper("Kalorien: \(Int(calories))", value: $calories, in: 0...2000, step: 10)
                    Stepper("Protein: \(Int(protein)) g", value: $protein, in: 0...300, step: 1)
                    Stepper("Kohlenhydrate: \(Int(carbs)) g", value: $carbs, in: 0...500, step: 1)
                    Stepper("Fett: \(Int(fat)) g", value: $fat, in: 0...200, step: 1)

                    Button("Speichern") {
                        let safeName = mealName.trimmingCharacters(in: .whitespacesAndNewlines)
                        tracker.addMeal(
                            name: safeName.isEmpty ? "Unbenannte Mahlzeit" : safeName,
                            calories: calories,
                            protein: protein,
                            carbs: carbs,
                            fat: fat
                        )
                        mealName = ""
                    }
                }

                Section("Heutige Mahlzeiten") {
                    let todayMeals = tracker.meals.filter { Calendar.current.isDateInToday($0.date) }
                    if todayMeals.isEmpty {
                        Text("Heute noch keine Mahlzeit eingetragen")
                            .foregroundStyle(.secondary)
                    } else {
                        ForEach(todayMeals) { meal in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(meal.name)
                                    .fontWeight(.semibold)
                                Text("\(Int(meal.calories)) kcal | P: \(Int(meal.protein))g C: \(Int(meal.carbs))g F: \(Int(meal.fat))g")
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Ernährung")
        }
    }
}
