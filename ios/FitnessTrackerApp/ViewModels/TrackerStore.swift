import Foundation

final class TrackerStore: ObservableObject {
    @Published var exercises: [Exercise] = [
        Exercise(name: "Laufen", caloriesPerMinute: 9.5, primaryMuscleGroup: "Ganzkörper"),
        Exercise(name: "Radfahren", caloriesPerMinute: 8.0, primaryMuscleGroup: "Beine"),
        Exercise(name: "Bankdrücken", caloriesPerMinute: 6.5, primaryMuscleGroup: "Brust"),
        Exercise(name: "Kniebeugen", caloriesPerMinute: 7.0, primaryMuscleGroup: "Beine")
    ]

    @Published var trainingPlan: [TrainingPlanItem] = []
    @Published var workouts: [WorkoutEntry] = []
    @Published var meals: [MealEntry] = []

    var todayNutrition: NutritionTotals {
        mealsForToday().reduce(into: NutritionTotals.zero) { result, meal in
            result.calories += meal.calories
            result.protein += meal.protein
            result.carbs += meal.carbs
            result.fat += meal.fat
        }
    }

    var todayBurnedCalories: Double {
        workoutsForToday().reduce(0) { $0 + $1.burnedCalories }
    }

    var netCalories: Double {
        todayNutrition.calories - todayBurnedCalories
    }

    func addTrainingPlanItem(dayLabel: String, exercise: Exercise, sets: Int, reps: Int) {
        trainingPlan.append(
            TrainingPlanItem(dayLabel: dayLabel, exercise: exercise, sets: sets, reps: reps)
        )
    }

    func addWorkout(exercise: Exercise, durationMinutes: Double, date: Date = .now) {
        workouts.insert(WorkoutEntry(exercise: exercise, durationMinutes: durationMinutes, date: date), at: 0)
    }

    func addMeal(name: String, calories: Double, protein: Double, carbs: Double, fat: Double, date: Date = .now) {
        meals.insert(
            MealEntry(name: name, calories: calories, protein: protein, carbs: carbs, fat: fat, date: date),
            at: 0
        )
    }

    private func mealsForToday() -> [MealEntry] {
        meals.filter { Calendar.current.isDateInToday($0.date) }
    }

    private func workoutsForToday() -> [WorkoutEntry] {
        workouts.filter { Calendar.current.isDateInToday($0.date) }
    }
}
