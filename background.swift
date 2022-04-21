//
//  background.swift
//  wwdc fiona
//
//  Created by Fiona Valencia on 21/04/22.
//

import SwiftUI

struct background: View {
    var body: some View {
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
struct background_Previews: PreviewProvider {
    static var previews: some View {
        background()
    }
}
