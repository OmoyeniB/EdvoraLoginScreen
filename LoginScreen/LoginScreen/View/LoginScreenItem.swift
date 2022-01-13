import SwiftUI

struct logoImage: View {
    var body: some View{
    Image("logos")
        .resizable()
        .frame(width: 156, height: 39.22)
        .clipped()
        .aspectRatio(contentMode: .fill)
        .padding(.bottom, 107.78)
        .padding(.top, 75)
        .padding(.leading, 110)
        .padding(.trailing, 109)
    }
}
struct edvorianlabel: View {
    var body: some View{
        Label(
            title: {Text("TheEdvorian")
                .foregroundColor(textFieldColor)
                .font(.system(size: 17))},
            icon: {Image(systemName: "person.fill")
                .foregroundColor(textFieldColor)})
    }
}
struct usernameTextField: View {
    @State var username: String = ""
    var body: some View{
        TextField("", text: $username)
            .autocapitalization(.none)
            .disableAutocorrection(true)
    }
}
struct userNameText: View {
    var body: some View{
        Rectangle()
            .fill(.white)
            .frame(width: 90, height: 15)
            .offset(x: 16)
            .padding(.top, -10)
        Text("Username")
            .foregroundColor(textFieldColor)
            .offset(x: 19)
            .padding(.top, -10)
            .padding(.horizontal, 4)
    
    }
}
struct image: View {
    @State var password: String = ""
    var body: some View{
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
}
struct passwordText: View {
    @State var password: String = ""
    var body: some View{
        Rectangle()
            .fill(.white)
            .offset()
        Text("Password")
            .foregroundColor(textFieldColor)
            .background(.white)
            .offset(x: 19)
            .padding(.top, -10)
    }
}
struct emailImage: View {
    @State var email: String = ""
    var body: some View{
        Image(systemName: "at")
            .foregroundColor(textFieldColor)
        TextField("", text: $email)
            .autocapitalization(.none)
            .disableAutocorrection(true)
    }
}
struct emailAddressText: View {
    var body: some View{
        Text("Email address")
            .foregroundColor(textFieldColor)
            .background(.white)
            .padding(.top, -10)
            .offset(x: 19)
    }
}
//struct forgottenPasswordText: View {
//    var body: some View{
//        Text("Forgotten password?")
//            .autocapitalization(.none)
//            .disableAutocorrection(true)
//            .foregroundColor(color)
//            .padding(.leading, 189)
//            .padding(.trailing, 34)
//            .padding(.bottom, 59)
//    }
//}
//struct loginButton: View {
//    var body: some View{
//        Text("LOGIN")
//            .font(.headline)
//            .foregroundColor(.white)
//            .frame(width: 302, height: 52, alignment: .center)
//            .background(buttonColor)
//            .cornerRadius(12.99)
//        .padding(.bottom, 30)
//    }
//}
//struct footText: View {
//    var body: some View{
//        Text("Don't have an account?")
//            .foregroundColor(.gray)
//        Text("SignUp")
//            .foregroundColor(color)
//            .font(.system(size: 15).weight(.semibold))
//        
//    }
//}
//
//
//
