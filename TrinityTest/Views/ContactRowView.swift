//
//  ContactRowView.swift
//  TrinityTest
//
//  Created by Muhammad Zeeshan on 2022-07-17.
//

import SwiftUI

struct ContactRowView: View {

    var model: ContactModel

    var body: some View {
        HStack {
            Circle()
                .fill(Color.orange)
                .frame(width: 64, height: 64, alignment: .center)
            Text(model.firstName + " " + model.lastName)
                .font(.system(size: 16))
            Spacer()
        }
    }
}
