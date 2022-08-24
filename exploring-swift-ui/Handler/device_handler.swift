import Contacts
import SwiftUI

class DeviceHandler {
    
    class func fetchContacts() ->  [ContactModel] {
        let store = CNContactStore()
        var contactList: [ContactModel] = [];
        store.requestAccess(for: .contacts) { (granted, error) in
            if (!granted) {
                self.goToAppSettings() }
            else {
                let keys = [CNContactGivenNameKey, CNContactFamilyNameKey,CNContactMiddleNameKey, CNContactGivenNameKey, CNContactPhoneNumbersKey]
                let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
                do {
                    try store.enumerateContacts(with: request, usingBlock: { (contact, stopPointer) in
                        let firstName = contact.givenName;
                        let lastName = contact.middleName;
                        var phones : [Phone] = [];
                        for phoneNumber in contact.phoneNumbers {
                            let label = phoneNumber.label ?? "";
                            let number = phoneNumber.value.stringValue.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "");
                            let phone : Phone = Phone(label: label, number: number);
                            phones.append(phone);
                        }
                        let contactData : ContactModel = ContactModel(firstName: firstName, lastName: lastName,phones: phones);
                        contactList.append(contactData);
                    })
                } catch let error {
                    print("Failed to enumerate contact", error)
                }
            }
        }
        return contactList;
    }
    
    class func goToAppSettings() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: { (success) in })
        }
    }
}

struct ContactModel : Identifiable {
    var id: String {
        self.firstName
    }
    var firstName: String
    var lastName: String
    var phones: [Phone]
}

struct Phone {
    var label: String
    var number: String
}
