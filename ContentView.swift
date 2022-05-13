import SwiftUI

struct Box {
    var id: Int
    let imageUrl : String
    var frontimageUrl : String
}

struct ContentView : View {

    let boxes : [Box] = [
    Box(id: 0, imageUrl: "backcard1", frontimageUrl: "frontcard1"),
    Box(id: 1, imageUrl: "backcard2", frontimageUrl: "frontcard2"),
    Box(id: 2, imageUrl: "backcard3", frontimageUrl: "frontcard3"),
    Box(id: 3, imageUrl: "backcard4", frontimageUrl: "frontcard4"),
    Box(id: 4, imageUrl: "backcard5", frontimageUrl: "frontcard5"),
    Box(id: 5, imageUrl: "backcard6", frontimageUrl: "frontcard6"),
    Box(id: 6, imageUrl: "backcard7", frontimageUrl: "frontcard7"),
    Box(id: 7, imageUrl: "backcard8", frontimageUrl: "frontcard8")
    ]
    var body: some View {
        NavigationView {
            ZStack{
                GeometryReader {geo in
                                    ZStack{
                                        Image("bg")
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
                                .frame(width: 265, height: 400)
                                .position(x: 145, y: 235)
                        }
                    }
                }
            }
            
            
        }.padding(20)
    }
}



struct BoxView: View {
    
    let box: Box
    @State var turn = false
    var tapGesture: some Gesture{
        TapGesture().onEnded { _ in
            self.turn.toggle()
        }
    }
    var body: some View {
        VStack {
            Image("\(turn ? box.frontimageUrl : box.imageUrl)")
                .resizable().gesture(tapGesture)
        }
    }
}
