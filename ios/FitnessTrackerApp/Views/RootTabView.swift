import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Übersicht", systemImage: "chart.pie.fill")
                }

            TrainingPlanView()
                .tabItem {
                    Label("Training", systemImage: "figure.strengthtraining.traditional")
                }

            NutritionView()
                .tabItem {
                    Label("Ernährung", systemImage: "fork.knife")
                }
        }
    }
}
