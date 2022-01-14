import SwiftUI

let buttonColor = Color(red: 115/255, green: 61/255, blue: 71/255)
let color = Color(red: 191/255, green: 155/255, blue: 155/255)
let textFieldColor = Color(red: 180/255, green: 180/255, blue: 180/255)

struct ContentView: View {
    var body: some View {
        VStack(){
            logoImage()
            ZStack (alignment: .topLeading){
                HStack{
                    HStack {
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
            ForgottenPasswordText()
                
            Button(action: {
                print("Login button has been clicked")
            }){
                loginButton()
            }
            HStack{
                footText()
            }
            .padding(.bottom,31)
        }
        .padding(.bottom,31)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}


