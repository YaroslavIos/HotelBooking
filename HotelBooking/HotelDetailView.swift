//
//  HotelDetailView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 21.12.2023.
//

import SwiftUI

struct HotelDetailView: View {
    var body: some View {
        ScrollView {
            ForEach(1..<3) { _ in
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: true) {
                        GalleryView()
                    }
                    
                    VStack(spacing: 10) {
                        VStack(alignment: .leading) {
                            Text("Стандартный с видом на бассейн или сад")
                                .font(.system(size: 22, weight: .medium))
                        }
                    }
                    
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
                    
                    RoundedRectangle(cornerRadius: 5.0)
                        .frame(width: 230, height: 29)
                        .foregroundStyle(.blue).opacity(0.1)
                        .overlay(
                            HStack(spacing: 3) {
                                Text("Подробнее о номере")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundStyle(.blue)
                                Image(systemName: "chevron.right")
                                    .frame(width: 25, height: 25)
                                    .foregroundStyle(.blue)
                            }
                        )
                    
                    HStack(alignment: .lastTextBaseline, spacing: 8) {
                        Text("от 186 600 ₽")
                            .font(.system(size: 30, weight: .semibold))
                        Text("за тур с перелётом")
                            .font(.system(size: 16))
                            .foregroundStyle(.secondary)
                    }
                    
                    NavigationLink(destination: BookingView()) {
                        Text("Выбрать номер")
                            .frame(width: 343, height: 48, alignment: .center)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.white)
                            .background(.blue)
                            .cornerRadius(15.0)
                    }
                    
                }
                .padding()
            }
        }
        .padding()
        .navigationTitle("Steigenberger Makadi")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                CustomNavBarItemView()
            }
        }
    }
}

#Preview {
    HotelDetailView()
}
