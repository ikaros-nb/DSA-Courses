enum PreparationKit: String, CaseIterable, Identifiable {
    var id: Self { self }
    
    case hackerRank30DaysOfCode = "30 Days of Code"
    
    var exercices: [Exercice] {
        switch self {
        case .hackerRank30DaysOfCode:
            return HR30DaysOfCode.allCases
        }
    }
}
