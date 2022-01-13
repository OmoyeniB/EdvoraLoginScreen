import SwiftUI

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
