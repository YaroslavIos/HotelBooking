//
//  HotelInformationView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 22.12.2023.
//

import SwiftUI

struct HotelInformationView: View {
    var info = ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"]
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Об отеле")
                .font(.system(size: 22, weight: .medium))
                .frame(width: 343, alignment: .leading)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("3-я линия")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.secondary)
                        .padding(.all, 5)
                        .background(.lightGrey)
                        .cornerRadius(5.0)
                    Text("Платный Wi-Fi в фойе")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.secondary)
                        .padding(.all, 5)
                        .background(.lightGrey)
                        .cornerRadius(5.0)
                }
                HStack {
                    Text("30 км до аэропорта")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.secondary)
                        .padding(.all, 5)
                        .background(.lightGrey)
                        .cornerRadius(5.0)
                    Text("1 км до пляжа")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.secondary)
                        .padding(.all, 5)
                        .background(.lightGrey)
                        .cornerRadius(5.0)
                }
            }
            
            Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
                .font(.system(size: 16))
            
            
            VStack {
                HStack {
                            Image("emoji-happy")
                                .resizable()
                                .frame(width: 30, height: 30)
                            VStack(alignment: .leading) {
                                Text("Удобства")
                                    .font(.system(size: 16, weight: .medium))
                                Text("Самое необходимое")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundStyle(.secondary)
                            }
                    Spacer()
                    Image("Vector 55")
                        .resizable()
                        .frame(width: 6, height: 12)
                }
                Divider()
                
                HStack {
                            Image("tick-square")
                                .resizable()
                                .frame(width: 30, height: 30)
                            VStack(alignment: .leading) {
                                Text("Удобства")
                                    .font(.system(size: 16, weight: .medium))
                                Text("Самое необходимое")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundStyle(.secondary)
                            }
                    Spacer()
                    Image("Vector 55")
                        .resizable()
                        .frame(width: 6, height: 12)
                }
                Divider()
                
                HStack {
                            Image("close-square")
                                .resizable()
                                .frame(width: 30, height: 30)
                            VStack(alignment: .leading) {
                                Text("Удобства")
                                    .font(.system(size: 16, weight: .medium))
                                Text("Самое необходимое")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundStyle(.secondary)
                            }
                    Spacer()
                    Image("Vector 55")
                        .resizable()
                        .frame(width: 6, height: 12)
                }
            }
            .padding()
            .background(.lightGrey)
            .cornerRadius(15.0)
            
        }
        .padding()
    }
}

#Preview {
    HotelInformationView()
}
