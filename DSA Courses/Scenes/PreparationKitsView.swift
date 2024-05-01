import SwiftUI

struct PreparationKitsView: View {
    let preparationKits: [PreparationKit]
    
    var body: some View {
        ForEach(preparationKits) { preparationKit in
            NavigationLink(
                preparationKit.rawValue,
                value: Destination.preparationKit(preparationKit)
            )
        }
    }
}

#Preview {
    List {
        PreparationKitsView(preparationKits: PreparationKit.allCases)
    }
}
