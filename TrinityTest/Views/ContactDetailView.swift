//
//  ContactDetailView.swift
//  TrinityTest
//
//  Created by Muhammad Zeeshan on 2022-07-17.
//

import SwiftUI

struct ContactDetailView: View {

    @Binding var model: ContactModel
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 128, height: 128, alignment: .center)
                    .padding(.bottom)
                Form {
                    Section(header: Text("Main Information")) {
                        HStack {
                            Text("First Name")
                            TextField("First Name", text: $model.firstName)
                        }
                        HStack {
                            Text("Last Name")
                            TextField("Last Name", text: $model.lastName)
                        }
                    }
                    Section(header: Text("Sub Information")) {
                        HStack {
                            Text("Email")
                            TextField("Email", text: $model.email.toUnwrapped(defaultValue: ""))
                        }
                        HStack {
                            Text("Phone")
                            TextField("Phone", text: $model.phone.toUnwrapped(defaultValue: ""))
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                       Text("Save")
                    })
                }
            }
            .accentColor(.orange)
        }
    }
}

extension Binding {
     func toUnwrapped<T>(defaultValue: T) -> Binding<T> where Value == Optional<T> {
        Binding<T>(get: { self.wrappedValue ?? defaultValue }, set: { self.wrappedValue = $0 })
    }
}
