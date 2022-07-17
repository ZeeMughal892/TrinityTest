//
//  ContactsView.swift
//  TrinityTest
//
//  Created by Muhammad Zeeshan on 2022-07-17.
//

import SwiftUI

struct ContactsView: View {

    @StateObject var viewModel = ContactsViewModel()

    var body: some View {
        NavigationView {
            List($viewModel.contacts, id: \.id) { contact in
                NavigationLink(destination: ContactDetailView(model: contact), label: {
                    ContactRowView(model: contact.wrappedValue)
                })
                .navigationBarBackButtonHidden(true)

            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                    })
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
            } .accentColor(.orange)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
