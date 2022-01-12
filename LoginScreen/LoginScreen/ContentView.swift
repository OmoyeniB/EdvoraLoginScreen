//
//  ContentView.swift
//  LoginScreen
//
//  Created by Decagon on 12/01/2022.
//

import SwiftUI
let color = UIColor(red: 191/255, green: 155/255, blue: 155/255, alpha: 1/255)
struct ContentView: View {
    var body: some View {
        VStack{
            logoImage()
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
        .padding(.bottom, 107.78)
        .padding(.top, 74)
        .padding(.leading, 110)
        .padding(.trailing, 109)
}
}
