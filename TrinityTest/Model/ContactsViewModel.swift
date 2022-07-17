//
//  ContactsViewModel.swift
//  TrinityTest
//
//  Created by Muhammad Zeeshan on 2022-07-17.
//

import Foundation

class ContactsViewModel: ObservableObject {

    @Published var contacts = [ContactModel]()

    init() {
        loadContacts()
    }

    func loadContacts() {
        guard let url = Bundle.main.url(forResource: "contacts", withExtension: "json")
            else {
                print("Json file not found")
                return
            }

        let data = try? Data(contentsOf: url)
        let contacts = try? JSONDecoder().decode([ContactModel].self, from: data!)
        self.contacts = contacts!
    }
}
