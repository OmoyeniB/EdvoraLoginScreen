//
//  ContentView.swift
//  LoginScreen
//
//  Created by Decagon on 12/01/2022.
//rgba 0.9, 0.9, 0.9, 1.0

import SwiftUI
let buttonColor = Color(red: 115/255, green: 61/255, blue: 71/255)
let color = Color(red: 191/255, green: 155/255, blue: 155/255)
let textFieldColor = Color(red: 180/255, green: 180/255, blue: 180/255)


struct ContentView: View {
     var body: some View {
        VStack(){
//            Spacer()
            logoImage()
            ZStack (alignment: .topLeading){
                HStack{
                    HStack {
                        edvorianlabel()
                        usernameTextField()
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 1))
                    .frame(width: 302, height: 52)
                }
                userNameText()
            }
            .padding(.bottom, 24)
            ZStack(alignment: .topLeading){
            HStack{
                HStack {
                   image()
                }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(textFieldColor, lineWidth: 1))
                    .frame(width: 302, height: 52)
            }
                passwordText()
            }
            .padding(.bottom, 24)
            ZStack (alignment: .topLeading){
            HStack{
                HStack {
                    emailImage()
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(textFieldColor, lineWidth: 1))
                .frame(width: 302, height: 52, alignment: .leading)
            }
               emailAddressText()
            }
            .padding(.bottom, 25)
            
            Text("Forgotten password?")
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(color)
                .padding(.leading, 170)
                .padding(.trailing, 34)
                .padding(.bottom, 59)
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 302, height: 52, alignment: .center)
                .background(buttonColor)
                .cornerRadius(12.99)
            .padding(.bottom, 30)
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                    .padding(.bottom, 31)
                Text("SignUp")
                    .foregroundColor(color)
                    .font(.system(size: 15).weight(.semibold))
                    .padding(.bottom, 31)
            }
            Spacer(minLength: 31)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


