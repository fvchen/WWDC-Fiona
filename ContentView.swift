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
                        ForEach(0..<boxes.count){ i in BoxView(box: boxes[i], index: i)
                                .frame(width: 300, height: 400)
                                .position(x: 170, y: 250)
                        }
                    }
                }
            }
        }.padding(20)
        
        struct BoxView: View {
            }
        
        let box: Box
        let index: Int
        
        let frontImages: [Box] = [
            Box(id: 0, imageUrl: "task1"),
            Box(id: 1, imageUrl: "task2"),
            Box(id: 2, imageUrl: "task3"),
            Box(id: 3, imageUrl: "task4"),
            Box(id: 4, imageUrl: "task5"),
            Box(id: 5, imageUrl: "task6"),
            Box(id: 6, imageUrl: "task7"),
            Box(id: 7, imageUrl: "task8")
        ]
        
        
        var body: some View {
            VStack {
                Image("\(box.imageUrl)")
                    .resizable().onTapGesture {
                        // masukin logic untuk ganti image ketika di tap
                        Image("\(frontImages[0].imageUrl)").onTapGesture {
                        
                        }
        
                        @State var Box = Box(id: 0, imageUrl: "back1")
                        @State var changeView = false
                            
                        //if index is tapped then display Image based on arraynya based on indexnya
                        
                        if index = is tapped {
                            Image(frontImages)
                        }
                            
                        
                            var body: some View {
                                changeView ? AnyView(theOtherView) : AnyView(theScrollView)
                            }
                            
                            var theOtherView: some View {
                                Image("back1").onTapGesture {
                                id: 0
                               self.changeView = false
                                }
                            }
                            
                            var theScrollView: some View {
                                ScrollView() {
                                    VStack {
                                        
                                        Image("task1")
                                        id: 0
                                            .resizable()
                                            .scaledToFill()
                                            .onTapGesture {
                                                self.changeView = true
                                            }
                                            
                                        }
                                    }
                                }
                            }
                         
                        
                       }
                    
                    }
            }
        
    }




