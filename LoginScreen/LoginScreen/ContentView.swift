//
//  ContentView.swift
//  LoginScreen
//
//  Created by Decagon on 12/01/2022.
//rgba 0.9, 0.9, 0.9, 1.0

import SwiftUI
let color = Color(red: 191/255, green: 155/255, blue: 155/255)
let textFieldColor = Color(red: 0.9, green: 0.9, blue: 0.9)
struct ContentView: View {
    @State var username: String = ""
    @State var gmail: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            logoImage()
            Text("Username")
            .foregroundColor(.gray)
            .background(.white)
            .padding()
            HStack{
                HStack {
                Label(
                    title: {Text("TheEdvorian")
                    .background(textFieldColor)
                    .font(.system(size: 20))},
                    icon: {Image(systemName: "person")
                    .foregroundColor(.gray)
                })
              TextField("", text: $username)
           }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 1))
            }
            .padding(.leading, 36)
            .padding(.trailing, 37)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct logoImage: View {
    var body: some View{
    Image("logo")
        .resizable()
        .frame(width: 156, height: 39.22)
        .clipped()
        .aspectRatio(contentMode: .fill)
        .padding(.bottom, 107.78)
        .padding(.top, 74)
        .padding(.leading, 110)
        .padding(.trailing, 109)
}
}


