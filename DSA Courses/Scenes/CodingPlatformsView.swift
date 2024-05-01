import SwiftUI

struct CodingPlatformsView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(CodingPlatform.allCases) { codingPlatform in
                    Section(codingPlatform.rawValue) {
                        PreparationKitsView(
                            preparationKits: codingPlatform.preparationKits
                        )
                    }
                }
            }
            .navigationTitle("Data Structures and Algorithms")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case let .preparationKit(preparationKit):
                    PreparationKitDetailView(preparationKit: preparationKit)
                        .navigationTitle(preparationKit.rawValue)
                        .navigationBarTitleDisplayMode(.inline)
                case let .exercice(exercice):
                    ExerciceView(exercice: exercice)
                        .navigationTitle(exercice.navigationTitle)
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        CodingPlatformsView()
    }
}
