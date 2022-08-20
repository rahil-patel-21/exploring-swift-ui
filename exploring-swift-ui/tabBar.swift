import SwiftUI

let tabFields: [String] = ["Home", "Explore", "Cart"]

struct TabBar: View {
    var body: some View {
        TabView {
            ForEach(Array(tabFields.enumerated()), id: \.element) { index, element in
                NavigationView {
                    if (index == 2) {
                        VStack {
                            ForEach(["IphoneX", "Mac"], id: \.self) {
                                el in CartItemCard(name: el)
                            }
                        } }
                    
                    Text("Body")
                }
                .tag(index)
                .tabItem {
                    Text(tabFields[index])
                }
            }
        }
    }
}
