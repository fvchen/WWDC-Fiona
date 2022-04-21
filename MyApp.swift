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
