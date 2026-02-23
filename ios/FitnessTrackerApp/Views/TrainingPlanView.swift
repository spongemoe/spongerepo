import SwiftUI

struct TrainingPlanView: View {
    @EnvironmentObject private var tracker: TrackerStore

    @State private var selectedExerciseIndex = 0
    @State private var selectedDay = "Montag"
    @State private var sets = 3
    @State private var reps = 10
    @State private var duration = 30.0

    private let dayOptions = ["Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag", "Samstag", "Sonntag"]

    var body: some View {
        NavigationStack {
            List {
                Section("Plan erstellen") {
                    Picker("Tag", selection: $selectedDay) {
                        ForEach(dayOptions, id: \.self, content: Text.init)
                    }

                    Picker("Übung", selection: $selectedExerciseIndex) {
                        ForEach(tracker.exercises.indices, id: \.self) { index in
                            Text(tracker.exercises[index].name)
                        }
                    }

                    Stepper("Sätze: \(sets)", value: $sets, in: 1...10)
                    Stepper("Wiederholungen: \(reps)", value: $reps, in: 1...30)

                    Button("Zum Trainingsplan hinzufügen") {
                        tracker.addTrainingPlanItem(
                            dayLabel: selectedDay,
                            exercise: tracker.exercises[selectedExerciseIndex],
                            sets: sets,
                            reps: reps
                        )
                    }
                }

                Section("Training loggen") {
                    Slider(value: $duration, in: 5...180, step: 5)
                    Text("Dauer: \(Int(duration)) Minuten")

                    Button("Workout speichern") {
                        tracker.addWorkout(
                            exercise: tracker.exercises[selectedExerciseIndex],
                            durationMinutes: duration
                        )
                    }
                }

                Section("Dein Plan") {
                    if tracker.trainingPlan.isEmpty {
                        Text("Noch keine Einträge")
                            .foregroundStyle(.secondary)
                    } else {
                        ForEach(tracker.trainingPlan) { item in
                            VStack(alignment: .leading, spacing: 4) {
                                Text("\(item.dayLabel): \(item.exercise.name)")
                                    .fontWeight(.semibold)
                                Text("\(item.sets)x\(item.reps) • \(item.exercise.primaryMuscleGroup)")
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Training")
        }
    }
}
