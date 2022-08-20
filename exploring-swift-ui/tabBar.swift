import SwiftUI

let tabFields: [String] = ["Home", "Explore", "Cart"]

struct TabBar: View {
    var body: some View {
        TabView {
            ForEach(Array(tabFields.enumerated()), id: \.element) { index, element in
                NavigationView {
                    if (index == 0) {
                        ScrollView {
                            VStack() {
                                ForEach(["IphoneX", "Mac","IphoneX","IphoneX", "Mac", "Mac","IphoneX", "Mac","IphoneX","IphoneX", "Mac", "Mac"], id: \.self) {
                                    el in CartItemCard(name: el)
                                }
                            }
                        }.frame(height: screenHeight * 0.8)
                        
                    }
                    
                    Text("Body")
                }
                .tag(index)
                .tabItem {
                    Text(element)
                }
            }
        }
    }
}
