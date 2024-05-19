import SwiftUI

struct ExerciceView: View {
    let exercice: Exercice
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Task")
                .fontWeight(.bold)
            
            Text(exercice.task)
                .fontWeight(.thin)
                .padding(.bottom, 16)
            
            Text("Input")
                .fontWeight(.bold)
            
            Text(exercice.input)
                .fontWeight(.thin)
                .padding(.bottom, 16)
            
            Text("Output")
                .fontWeight(.bold)
            
            Text(exercice.output)
                .fontWeight(.thin)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ExerciceView(exercice: HR30DaysOfCode.day23)
}
