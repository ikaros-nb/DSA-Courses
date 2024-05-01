import SwiftUI

struct ExerciceView: View {
    let exercice: Exercice
    
    var body: some View {
        VStack {
            Text("Output:")
                .fontWeight(.bold)
            
            Text(exercice.output)
                .fontWeight(.thin)
            
            Spacer()
        }
    }
}

#Preview {
    ExerciceView(exercice: HR30DaysOfCode.day23)
}
