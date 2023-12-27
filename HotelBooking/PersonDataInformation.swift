//
//  PersonDataInformation.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 23.12.2023.
//

import SwiftUI

struct PersonDataInformation: Codable, Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let dateOfBirth: String
    let citizenship: String
    let numberOfPassport: String
    let validationDate: String
}
