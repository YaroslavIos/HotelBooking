//
//  FinalScreenView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 25.12.2023.
//

import SwiftUI

struct FinalScreenView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.lightGrey)
                .overlay(
                    Text("🎉")
                        .font(.largeTitle)
            )
            Text("Ваш заказ принят в работу")
                .font(.system(size: 22, weight: .medium))
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
            Spacer()
            NavigationLink(destination: ContentView()) {
//                Button("Супер!") {
//                    dismiss()
//                }
                
                Text("Супер!")
                    .frame(width: 343, height: 48, alignment: .center)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(15.0)
            }
        }
        .padding()
        .navigationTitle("Заказ оплачен")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                CustomNavBarItemView()
            }
        }
    }
}

#Preview {
    FinalScreenView()
}
