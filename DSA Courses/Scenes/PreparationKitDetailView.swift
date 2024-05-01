import SwiftUI

struct PreparationKitDetailView: View {
    let preparationKit: PreparationKit
    
    var body: some View {
        List {
            ForEach(preparationKit.exercices, id: \.name) { exercice in
                NavigationLink(
                    exercice.name,
                    value: Destination.exercice(exercice)
                )
            }
        }
    }
}

#Preview {
    PreparationKitDetailView(preparationKit: .hackerRank30DaysOfCode)
}
