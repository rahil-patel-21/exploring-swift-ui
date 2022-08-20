import SwiftUI

struct DashboardUI: View {
    var body: some View {
        TabBar()
    }
}

struct ActivitiesCartItem {
    var itemName: String
    var itemPrice: Int
    var itemColor: String
    var itemManufacturer: String
    var itemImage: String
}

struct CartItemCard: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
            }
            Text(name)
                .lineLimit(nil)
                .foregroundColor(.primary)
            Text("Apple")
                .foregroundColor(.primary)
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
            Text("Black")
                .foregroundColor(.primary)
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
                .padding(.bottom, 10)
        }
//        GeometryReader { geometry in
//                HStack (spacing: 10) {
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Spacer()
//                        }
//                        Text(name)
//                            .lineLimit(nil)
//                            .foregroundColor(.primary)
//                        Text("Apple")
//                            .foregroundColor(.primary)
//                            .font(.system(size: 12))
//                            .foregroundColor(Color.gray)
//                        Text("Black")
//                            .foregroundColor(.primary)
//                            .font(.system(size: 12))
//                            .foregroundColor(Color.gray)
//                            .padding(.bottom, 10)
//                    }.frame(width: geometry.size.width - 150)
//                        .padding(.top, 8)
//                    VStack(alignment: .trailing){
//                        HStack {
//                            Spacer()
//                        }
//                        Text("$ 2500")
//                            .font(.system(size: 16))
//                            .foregroundColor(Color.black)
//                            .padding(.trailing, 15)
//
//
//                    }.padding(.bottom, 10)
//                }
//
//
//        }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
//            .cornerRadius(10)
        
        
    }
}




