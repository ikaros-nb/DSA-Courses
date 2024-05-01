enum CodingPlatform: String, CaseIterable, Identifiable {
    var id: Self { self }
    
    case hackerRank = "HackerRank"
    case leetCode = "LeetCode"
    
    var preparationKits: [PreparationKit] {
        switch self {
        case .hackerRank:
            return [.hackerRank30DaysOfCode]
        case .leetCode:
            return []
        }
    }
}
