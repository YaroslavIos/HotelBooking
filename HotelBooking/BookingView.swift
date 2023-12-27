//
//  BookingView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 22.12.2023.
//

import SwiftUI

struct BookingView: View {
    @State private var telephoneNumber = "+7 (951) 555-99-00"
    @State var email = "examplemail.000@mail.ru"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                VStack(alignment: .leading, spacing: 8) {
                    RoundedRectangle(cornerRadius: 5.0)
                        .frame(width: 170, height: 29)
                        .foregroundStyle(.yellow.opacity(0.2))
                        .overlay(
                            HStack(spacing: 3) {
                                Image("Icons")
                                    .frame(width: 25, height: 25)
                                    .scaledToFill()
                                Text("5 Превосходно")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundStyle(.orange)
                            }
                        )
                    Text("Steigenberger Makadi")
                        .font(.system(size: 22, weight: .medium))
                    Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.blue)
                }
                
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack(spacing: 70) {
                        Text("Вылет из")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("Санкт-Петербург")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 30) {
                        Text("Страна, город")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("Египет, Хургада")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 100) {
                        Text("Даты")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("19.09.2023 - 27.09.2023")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 40) {
                        Text("Кол-во ночей")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("7 ночей")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 100) {
                        Text("Отель")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("Steigenberger Makadi")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 90) {
                        Text("Номер")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("Стандартный с видом на бассейн или сад")
                            .font(.system(size: 16))
                    }
                    HStack(spacing: 80) {
                        Text("Питание")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Text("Все включено")
                            .font(.system(size: 16))
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Информация о покупке")
                    TextField("Номер телефона", text: $telephoneNumber)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.lightGrey))
                    TextField("Почта", text: $email)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.lightGrey))
                    Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                        .font(.system(size: 14))
                        .foregroundStyle(.secondary)
                }
                PersonalData()
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: .infinity, height: 58)
                    .foregroundStyle(.clear)
                    .overlay(
                        HStack {
                            Text("Второй турист")
                                .font(.system(size: 22, weight: .medium))
                            Spacer()
                            Image(systemName: "chevron.down")
                                .frame(width: 32, height: 32)
                                .background(Color(.smallIconColorWithOpacity).opacity(0.1))
                                .foregroundStyle(.blue)
                                .cornerRadius(6)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: .infinity, height: 58)
                    .foregroundStyle(.clear)
                    .overlay(
                        HStack {
                            Text("Добавить туриста")
                                .font(.system(size: 22, weight: .medium))
                            Spacer()
                            Image(systemName: "plus")
                                .frame(width: 32, height: 32)
                                .background(Color(.smallIconColorWithOpacity))
                                .foregroundStyle(.white)
                                .cornerRadius(6)
                        }
                    )
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Тур")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("186 600 ₽")
                            .font(.system(size: 16))
                    }
                    HStack {
                        Text("Топливный сбор")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("9 300 ₽")
                            .font(.system(size: 16))
                    }
                    HStack {
                        Text("Сервисный сбор")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("2 136 ₽")
                            .font(.system(size: 16))
                    }
                    HStack {
                        Text("К оплате")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("198 036 ₽")
                            .font(.system(size: 16))
                            .foregroundStyle(.blue)
                    }
                }
                
                NavigationLink(destination: FinalScreenView()) {
                    Text("Оплатить 198 036 ₽")
                        .frame(width: 343, height: 48, alignment: .center)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(15.0)
                }
            }
            .padding()
            .navigationTitle("Бронирование")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    CustomNavBarItemView()
                }
            }
        }
    }
}

struct TextFieldWidthPlaceholder: View {
    @State private var text: String = ""
    let placeholder: String
    var body: some View {
        VStack {
            if !text.isEmpty {
                Text(text)
            } else {
                TextField("", text: $text, onEditingChanged: { (editing) in
                    if editing {
                        withAnimation {
                            self.text = self.placeholder
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    BookingView()
}
