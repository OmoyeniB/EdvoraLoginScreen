import SwiftUI

struct logoImage: View {
    var body: some View{
        Image("logos")
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
struct usernameTextField: View {
    @State var username: String = ""
    var body: some View{
        Image(systemName: "person.fill")
            .foregroundColor(textFieldColor)
        TextField("", text: $username)
            .font(.system(size: 17))
            .autocapitalization(.none)
            .disableAutocorrection(true)
    }
}
struct userNameText: View {
    var body: some View{
        Rectangle()
            .fill(.white)
            .frame(width: 85, height: 15)
            .offset(x: 16)
            .padding(.top, -10)
        Text("Username")
            .foregroundColor(textFieldColor)
            .offset(x: 19)
            .padding(.top, -10)
            .padding(.horizontal, 4)
            .font(.system(size: 15))
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
            .offset(x: 16)
            .padding(.top, -10)
            .frame(width: 80, height: 15)
        Text("Password")
            .font(.system(size: 15))
            .foregroundColor(textFieldColor)
            .offset(x: 19)
            .padding(.top, -10)
            .padding(.horizontal, 4)
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
        Rectangle()
            .fill(.white)
            .offset(x: 16)
            .padding(.top, -8)
            .frame(width: 110, height: 15)
            .padding(.bottom, 59)
        Text("Email address")
            .font(.system(size: 15))
            .foregroundColor(textFieldColor)
            .padding(.top, -10)
            .offset(x: 19)
            .padding(.horizontal, 4)
    }
}
struct ForgottenPasswordText: View {
    var body: some View{
Text("Forgotten password?")
    .autocapitalization(.none)
    .disableAutocorrection(true)
    .foregroundColor(color)
    .padding(.leading, 12)
    .padding(.trailing, -128)
    .padding()
    .padding(.bottom, 59)
    }
}
struct loginButton: View {
    var body: some View{
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 302, height: 52, alignment: .center)
            .background(buttonColor)
            .cornerRadius(12.99)
            .padding(.bottom, 30)
    }
}
struct footText: View {
    var body: some View{
        Text("Don't have an account?")
            .foregroundColor(.gray)
            .padding(.bottom, 31)
        Text("SignUp")
            .foregroundColor(color)
            .font(.system(size: 15).weight(.semibold))
            .padding(.bottom, 31)
    }
}
