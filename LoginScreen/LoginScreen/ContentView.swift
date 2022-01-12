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
            Image(uiImage: UIImage(named: "logo"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
