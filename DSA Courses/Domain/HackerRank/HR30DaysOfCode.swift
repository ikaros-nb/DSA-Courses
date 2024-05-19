enum HR30DaysOfCode: String, CaseIterable, Identifiable, Exercice {
    var id: Self { self }
    
    case day23 = "Day 23"
    case day24 = "Day 24"
    case day25 = "Day 25"
    case day26 = "Day 26"
    case day28 = "Day 28"
    case day29 = "Day 29"
    
    var name: String {
        switch self {
        case .day23:
            return "\(rawValue): BST Level-Order Traversal"
        case .day24:
            return "\(rawValue): More Linked Lists"
        case .day25:
            return "\(rawValue): Running Time and Complexity"
        case .day26:
            return "\(rawValue): Nested Logic"
        case .day28:
            return "\(rawValue): RegEx, Patterns, and Intro to Databases"
        case .day29:
            return "\(rawValue): Bitwise AND"
        }
    }
    
    var navigationTitle: String {
        rawValue
    }
    
    var task: String {
        exercice.task
    }
    
    var input: String {
        exercice.input
    }
    
    var output: String {
        exercice.output
    }
    
    private var exercice: ExerciceContent {
        switch self {
        case .day23:
            return HR30DCDay23()
        case .day24:
            return HR30DCDay24()
        case .day25:
            return HR30DCDay25()
        case .day26:
            return HR30DCDay26()
        case .day28:
            return HR30DCDay28()
        case .day29:
            return HR30DCDay29()
        }

    }
}
