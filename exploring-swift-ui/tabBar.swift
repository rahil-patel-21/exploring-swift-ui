import SwiftUI

let tabFields: [String] = ["Home", "Explore", "Cart"]

struct TabBar: View {
    @State private var contactList : [ContactModel] = []
    var body: some View {
        TabView {
            ForEach(Array(tabFields.enumerated()), id: \.element) { index, element in
                NavigationView {
                    if (index == 0) {
                        ScrollView {
                            VStack() {
                                Button(action: {
                                    contactList =  DeviceHandler.fetchContacts();
                                    
                                }) {
                                    Text("PRESS")
                                }
                                ContactListView(contactList:contactList)
                                ContactListView(contactList:contactList)
                            }.frame(height: screenHeight * 0.8)
                            
                        }}
                    
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

struct ContactListView: View {
    var contactList : [ContactModel];
    var body: some View {
        if (contactList.count > 0) {
            ForEach(contactList) { contact in
                Text(contact.firstName)
            }
        }
    }
}
