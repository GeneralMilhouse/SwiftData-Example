import SwiftData
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(Goal.examples) { goal in
                    NavigationLink(destination: GoalView(goal: goal)) {
                        Label {
                            VStack(alignment: .leading) {
                                Text(goal.title)
                                Text(goal.goalDescription)
                                    .font(.callout)
                                    .foregroundStyle(.secondary)
                                    .lineLimit(2)
                            }
                        } icon: {
                            Image(systemName: goal.symbolName)
                        }
                    }
                }
            }
        }
    }
}

struct GoalView: View {
    var goal: Goal

    var body: some View {
        List(goal.challenges ?? []) { challenge in
            VStack {
                VStack(alignment: .leading) {
                    Text(challenge.title)
                    Text(challenge.challengeDescription)
                        .font(.callout)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(PreviewSampleData.container)
}

actor PreviewSampleData {
    @MainActor
    static var container: ModelContainer = {
        let schema = Schema([Goal.self])
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: schema, configurations: [configuration])

        return container
    }()
}
