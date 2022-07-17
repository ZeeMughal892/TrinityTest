//
//  ContactModel.swift
//  TrinityTest
//
//  Created by Muhammad Zeeshan on 2022-07-17.
//

import Foundation

struct ContactModel: Codable, Identifiable {

    var id: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var email: String?
    var phone: String?
}
