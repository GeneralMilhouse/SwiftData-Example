import Foundation
import SwiftData

@Model
class Goal {
    @Attribute(.unique) var id = UUID()
    var title: String
    var completionDate: Date
    var goalDescription: String
    var symbolName: String
    var status: Status
    var inspirationImage: Data?
    var creationDate: Date
    var feedback: [String]

    @Relationship(deleteRule: .cascade, inverse: \Challenge.goal) var challenges: [Challenge]?

    init(title: String, completionDate: Date, goalDescription: String, symbolName: String, status: Status, inspirationImage: Data? = nil, creationDate: Date = Date.now, feedback: [String] = [], challenges: [Challenge] = []) {
        self.title = title
        self.completionDate = completionDate
        self.goalDescription = goalDescription
        self.symbolName = symbolName
        self.status = status
        self.inspirationImage = inspirationImage
        self.creationDate = creationDate
        self.feedback = feedback
        self.challenges = challenges
    }
}

enum Status: Codable {
    case ongoing
    case achieved
}
