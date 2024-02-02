import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State var backgroundColor = Color.green // Variable pour la couleur
    @State var feeling = "NEGATIVE 😞"
    @State var modelOutput = ""

    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                Color.purple
                    .frame(minHeight: 150)
                
                VStack {
                    TextField("Entrez une phrase", text: $textInput)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal, 20)
                    
                    Button(action: {
                        // Appeler la fonction qui détermine le sentiment ici
                        determineSentiment()
                    }) {
                        Text("Devinez le sentiment")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8.0)
                    }
                }
            }

            ZStack {
                backgroundColor
                    .frame(minHeight: 10)
                
                VStack {
                    Spacer()
                    Text(feeling)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(backgroundColor)
                    Spacer()
                }
            }
        }
    }

    // Fonction pour déterminer le sentiment et mettre à jour l'interface en conséquence
    func determineSentiment() {
        // Remplacez cette logique par l'appel à votre modèle CoreML pour déterminer le sentiment
        // Actuellement, la logique est basée sur un exemple
        let sentiment = "negative"

        switch sentiment {
        case "mixed":
            backgroundColor = Color.yellow
            feeling = "MIXED 😐"
        case "negative":
            backgroundColor = Color.red
            feeling = "NEGATIVE 😞"
        case "positive":
            backgroundColor = Color.green
            feeling = "POSITIVE 😁"
        case "neutral":
            backgroundColor = Color.gray
            feeling = "NEUTRAL 😐"
        default:
            break
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
