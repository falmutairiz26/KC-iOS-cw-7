//
//  ContentView.swift
//  cw 7 student info
//
//  Created by Fatemah Almutairi on 17/08/2022.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            Color("grayy")
                .ignoresSafeArea()
            VStack{
                Image("st id")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("Student Details")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("grayy"))
                    .padding()
                    .frame(width: 400, height: 70)
                    .background(Color("blue"))
                ScrollView {
                    ForEach(students){ student in
                        VStack {
                            HStack {
                                Text(student.fullname)
                                .font(.system(size: 28))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("blue"))
                            }
                            Spacer()
                            HStack {
                                Text("Age: \(student.aage)")
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Text("Birth Year: \(student.year)")
                                Spacer()
                            }
                            HStack {
                                Text("Grade: \(student.inclass)")
                                Spacer()
                            }
                                
                        } .foregroundColor(.white)
                            .font(.system(size: 22))
                            .padding()
                            .frame(width: 400, height: 140)
                            .background(Color.black.opacity(0.15))
                    }
                    }
            }
        }
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
