import Foundation

struct Exercise: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var caloriesPerMinute: Double
    var primaryMuscleGroup: String
}

struct WorkoutEntry: Identifiable {
    let id = UUID()
    var exercise: Exercise
    var durationMinutes: Double
    var date: Date

    var burnedCalories: Double {
        durationMinutes * exercise.caloriesPerMinute
    }
}

struct TrainingPlanItem: Identifiable {
    let id = UUID()
    var dayLabel: String
    var exercise: Exercise
    var sets: Int
    var reps: Int
}

struct MealEntry: Identifiable {
    let id = UUID()
    var name: String
    var calories: Double
    var protein: Double
    var carbs: Double
    var fat: Double
    var date: Date
}

struct NutritionTotals {
    var calories: Double
    var protein: Double
    var carbs: Double
    var fat: Double

    static let zero = NutritionTotals(calories: 0, protein: 0, carbs: 0, fat: 0)
}
