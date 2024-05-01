enum Destination: Equatable, Hashable, Identifiable {
    var id: Self { self }
    
    case preparationKit(PreparationKit)
    case exercice(Exercice)
    
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        switch (lhs, rhs) {
        case let (.preparationKit(lhsKit), .preparationKit(rhsKit)):
            return lhsKit == rhsKit
        case let (.exercice(lhsExercice), .exercice(rhsExercice)):
            return lhsExercice.name == rhsExercice.name && lhsExercice.output == rhsExercice.output
        case (.exercice, .preparationKit):
            return false
        case (.preparationKit, .exercice):
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
