import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 40.0) {
                Image("logo")
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Button(action: deal, label: {
                    Image("button")
                })
                
                HStack {
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }

                    Spacer()
                }
                .foregroundColor(Color.white)
            }
        }
    }
    
    private func getRandomNumber() -> String {
        let randNumber = String(Int.random(in: 2...14))
        return randNumber
    }
    
    private func deal(){
        let playerNumber = getRandomNumber()
        playerCard = "card" + playerNumber
        
        let cpuNumber = getRandomNumber()
        cpuCard = "card" + cpuNumber
        
        if playerNumber > cpuNumber {
            playerScore += 1
        } else if playerNumber < cpuNumber {
            cpuScore += 1
        } else {
            print("Draw")
        }
    }
}



#Preview {
    ContentView()
}
