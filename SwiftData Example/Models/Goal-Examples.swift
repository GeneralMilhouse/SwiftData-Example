import Foundation

extension Goal {
    static var examples: [Goal] {
        var dateInThreeMonths: Date {
            Calendar.current.date(byAdding: .month, value: 3, to: .now) ?? .now
        }

        let challenge1 = Challenge(title: "Daily Meditation", challengeDescription: " Dedicate at least 10 minutes a day to meditation or mindfulness.")
        let challenge2 = Challenge(title: "Digital Detox", challengeDescription: "Reduce screen time, especially before bedtime.")
        let challenge3 = Challenge(title: "Gratitude Journal", challengeDescription: "Write down three things you're grateful for every day.")
        let challenge4 = Challenge(title: "Time for Reflection", challengeDescription: "Spend time each week reflecting on your feelings and experiences.")
        let goal = Goal(title: "Improve Mental Health", completionDate: dateInThreeMonths, goalDescription: "A commitment to nurturing one's mind, reducing stress, and fostering a positive mental environment", symbolName: "brain.head.profile", status: .ongoing, challenges: [challenge1, challenge2, challenge3, challenge4])
        /*
         The commented code below crashes the app at startup

        challenge1.goal = goal
        challenge2.goal = goal
        challenge3.goal = goal
        challenge4.goal = goal
         */

        return [goal]
    }
}
