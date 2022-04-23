import SwiftUI

struct Box {
    var id: Int
    let imageUrl : String
    var frontimageUrl : String
}

struct ContentView : View {

    let boxes : [Box] = [
    Box(id: 0, imageUrl: "back1", frontimageUrl: "task1"),
    Box(id: 1, imageUrl: "back2", frontimageUrl: "task2"),
    Box(id: 2, imageUrl: "back3", frontimageUrl: "task3"),
    Box(id: 3, imageUrl: "back4", frontimageUrl: "task4"),
    Box(id: 4, imageUrl: "back5", frontimageUrl: "task5"),
    Box(id: 5, imageUrl: "back6", frontimageUrl: "task6"),
    Box(id: 6, imageUrl: "back7", frontimageUrl: "task7"),
    Box(id: 7, imageUrl: "back8", frontimageUrl: "task8")
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
//tap gesture, masukinnya di box view
