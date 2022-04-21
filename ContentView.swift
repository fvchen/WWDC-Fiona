import SwiftUI

struct Box {
    var id: Int
    let imageUrl : String
}

struct ContentView : View {

    let boxes : [Box] = [
    Box(id: 0, imageUrl: "back1"),
    Box(id: 1, imageUrl: "back2"),
    Box(id: 2, imageUrl: "back3"),
    Box(id: 3, imageUrl: "back4"),
    Box(id: 4, imageUrl: "back5"),
    Box(id: 5, imageUrl: "back6"),
    Box(id: 6, imageUrl: "back7"),
    Box(id: 7, imageUrl: "back8")
    ]
    var body: some View {
        NavigationView {
            ZStack{
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<boxes.count){I in BoxView(box: boxes[I])
                                .frame(width: 300, height: 400)
                                .position(x: 170, y: 250)
                        }
                    }
                }
            }
            
            
        }.padding(20)
    }
}



struct BoxView: View {
    
    let box: Box
    
    var body: some View {
        VStack {
            Image("\(box.imageUrl)")
                .resizable()
        }
    }
}
//tap gesture, masukinnya di box view
