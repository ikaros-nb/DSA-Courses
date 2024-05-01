enum HR30DaysOfCode: String, CaseIterable, Identifiable, Exercice {
    var id: Self { self }
    
    case day23 = "Day 23"
    
    var name: String {
        switch self {
        case .day23:
            return "\(rawValue): BST Level-Order Traversal"
        }
    }
    
    var navigationTitle: String {
        rawValue
    }
    
    var output: String {
        switch self {
        case .day23:
            let exercice: ExerciceOutput = HR30DCDay23()
            return exercice.output
        }
    }
}
