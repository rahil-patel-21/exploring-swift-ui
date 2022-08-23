import Contacts
import SwiftUI

class DeviceHandler {
    
    class func fetchContacts() -> Any {
        do {
            let store = CNContactStore()
            store.requestAccess(for: .contacts) { (granted, error) in
                if (!granted)
                {
                    self.goToAppSettings()
                    
                }
                else {
                    let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey]
                    let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
                    do {
                        try store.enumerateContacts(with: request, usingBlock: { (contact, stopPointer) in
                            print(contact.givenName)
                            print(contact.phoneNumbers[0].value.stringValue)
                        })
                    } catch let error {
                        print("Failed to enumerate contact", error)
                    }
                }
                
            }
            return "k500Error";
        } catch _ {
            return "k500Error";
        }
    }
    
    class func goToAppSettings() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
            })
        }
        
        
    }
    
}

struct ContactModel {
    var firstName: String,
        var lastName: 
}
