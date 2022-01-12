//
//  ContentView.swift
//  LoginScreen
//
//  Created by Decagon on 12/01/2022.
//rgba 0.9, 0.9, 0.9, 1.0

import SwiftUI
let buttonColor = Color(red: 115/255, green: 61/255, blue: 71/255)
let color = Color(red: 191/255, green: 155/255, blue: 155/255)
let textFieldColor = Color(red: 0.9, green: 0.9, blue: 0.9)
struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
   
    var body: some View {
        VStack{
            logoImage()
            VStack{
            Text("Username")
                    .padding(-112)
                
            .foregroundColor(.gray)
            .background(.white)
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
            }
            .padding(.leading, 36)
            .padding(.trailing, 37)
            .padding(.bottom, 24)
            HStack{
                HStack {
                    Image("keyIcon")
                        .resizable()
                        .clipped()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 17, height: 17)
              TextField("", text: $password)
                    Image(systemName: "eye.fill")
                        .foregroundColor(color)
           }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(textFieldColor, lineWidth: 0.5))
            }
            .padding(.leading, 36)
            .padding(.trailing, 37)
            .padding(.bottom, 24)
            HStack{
                HStack {
                    Image(systemName: "at")
                        .foregroundColor(.gray)
              TextField("", text: $email)
           }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(textFieldColor, lineWidth: 0.5))
            }
            .padding(.leading, 36)
            .padding(.trailing, 37)
            .padding(.bottom, 33)
            Text("Forgotten password?")
                .foregroundColor(color)
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .padding(.leading, 189)
                .padding(.trailing, 34)
            Button {
                print("Sign up button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(buttonColor)
                    
            }
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


