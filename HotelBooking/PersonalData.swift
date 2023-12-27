//
//  PersonalData.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 23.12.2023.
//

import SwiftUI

struct PersonalData: View {
    
    @State private var name = ""
    @State private var surname = ""
    @State private var dateOfBirth = ""
    @State private var citizenship = ""
    @State private var numberOfPassport = ""
    @State private var validationDate = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Первый турист")
                    .font(.system(size: 22, weight: .medium))
                Spacer()
                Image(systemName: "chevron.up")
                    .frame(width: 32, height: 32)
                    .background(Color(.smallIconColorWithOpacity).opacity(0.1))
                    .foregroundStyle(.blue)
                    .cornerRadius(6)
            }
            TextField("Имя", text: $name)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
            TextField("Фамилия", text: $surname)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
            TextField("Дата рождения", text: $dateOfBirth)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
            TextField("Гражданство", text: $citizenship)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
            TextField("Номер загранпаспорта", text: $numberOfPassport)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
            TextField("Срок действия загранпаспорта", text: $validationDate)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.lightGrey)
        }
    }
}

#Preview {
    PersonalData()
}
