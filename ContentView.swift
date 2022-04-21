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
            
            ScrollView {
                HStack {
                    ForEach(boxes.identified(by: \.id)) {box in
                        BoxView(box: box)
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
                .cornerRadius(12)
                .frame(width: 80, height: 80)
        }
    }
}
