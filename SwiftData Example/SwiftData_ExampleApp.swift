import SwiftData
import SwiftUI

@main
struct SwiftData_ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Goal.self)
    }
}
