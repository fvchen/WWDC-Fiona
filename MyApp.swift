import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()

    GeometryReader {geo in
                        ZStack{
                            Image("background")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                                .opacity(1.0)
                        }
                    }
                }
            }
        }

struct CardView : View {
    
    var data : Card
    var body : some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Image(data.img)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 30, height: 460)
        }
    }
}


struct Card Identifiable {
    
    var id : Int
    var img : String
    var show : Bool
}

var data = [

Card(id: 0, img: "back1", show: false),
Card(id: 1, img: "back2", show: false),
Card(id: 2, img: "back3", show: false),
Card(id: 3, img: "back4", show: false),
Card(id: 4, img: "back5", show: false),
Card(id: 5, img: "back6", show: false),
Card(id: 6, img: "back7", show: false),
Card(id: 7, img: "back8", show: false),

]
