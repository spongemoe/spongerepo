import SwiftUI

@main
struct FitnessTrackerApp: App {
    @StateObject private var tracker = TrackerStore()

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(tracker)
        }
    }
}
