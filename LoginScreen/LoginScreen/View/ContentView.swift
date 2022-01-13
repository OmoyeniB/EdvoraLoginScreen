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
        VStack(){
            logoImage()
            ZStack (alignment: .topLeading){
                HStack{
                    HStack {
                        Label(
                            title: {Text("TheEdvorian")
                                .font(.system(size: 20))},
                            icon: {Image(systemName: "person")
                                    .foregroundColor(.gray)
                            })
                        TextField("", text: $username)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 1))
                }
                Text("Username")
                    .foregroundColor(.gray)
                    .background(.white)
                    .offset(x: 19)
                    .padding(.top, -10)
            }
         //   .padding(.top, 1)
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
                    SecureField("", text: $password)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    Image(systemName: "eye.fill")
                        .foregroundColor(color)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(textFieldColor, lineWidth: 1))
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
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(textFieldColor, lineWidth: 1))
            }
            .padding(.leading, 36)
            .padding(.trailing, 37)
            .padding(.bottom, 33)
            Text("Forgotten password?")
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(color)
                .font(.system(size: 15).weight(.semibold))
                .padding(.leading, 189)
                .padding(.trailing, 34)
            Button {
                print("Sign up button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(buttonColor)
                    .frame(width: 224, height: 18)
                    .cornerRadius(12.99)
                    .padding(.leading, 36)
                    .padding(.trailing, 37)
            }
            .padding()
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                Text("SignUp")
                    .foregroundColor(color)
                    .font(.system(size: 15).weight(.semibold))
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct textField: View {
//    var body: some View{
//
//}
//}
