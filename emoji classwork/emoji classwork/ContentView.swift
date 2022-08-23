//
//  ContentView.swift
//  emoji classwork
//
//  Created by Fatemah Almutairi on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojies = ["😭","😂","🥲","🤪","😃","😁","👀","✨","🥰","👑","✌🏼","😪","🫶🏼"]
    @State var fe = ""
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.1)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Choose the emoji that descriebs your day")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.largeTitle)
                Spacer()
                Text(fe)
                    .padding()
                    .font(.system(size: 100))
                Spacer()
                ScrollView(.horizontal){
                        HStack {
                            ForEach(emojies, id:\.self){ e in
                                Text(e)
                                .padding()
                                .font(.largeTitle)
                                .background(Color.blue.opacity(0.4))
                                .clipShape(Circle())
                                .onTapGesture {
                                    if fe == ""
                                    {
                                        fe = e
                                    }
                                }
                            }
                        }
                }
                Text("<- Scroll to find more imojies ->")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title3)
                Spacer()
        }
}
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
