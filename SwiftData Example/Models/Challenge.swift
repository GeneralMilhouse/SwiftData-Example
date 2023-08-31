import Foundation
import SwiftData

@Model
class Challenge {
    var title: String
    var challengeDescription: String

    // Relationship
    var goal: Goal?

    init(title: String, challengeDescription: String, goal: Goal? = nil) {
        self.title = title
        self.challengeDescription = challengeDescription
        self.goal = goal
    }
}
