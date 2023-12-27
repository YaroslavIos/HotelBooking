//
//  GalleryAndTextView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 22.12.2023.
//

import SwiftUI

struct GalleryAndTextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: true) {
                GalleryView()
            }
            
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
            
            VStack(spacing: 10) {
                VStack(alignment: .leading) {
                    Text("Steigenberger Makadi")
                        .font(.system(size: 22, weight: .medium))
                    Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.blue)
                }
                HStack(alignment: .lastTextBaseline, spacing: 8) {
                    Text("от 134 673 ₽")
                        .font(.system(size: 30, weight: .semibold))
                    Text("за тур с перелётом")
                        .font(.system(size: 16))
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding()
    }
}

#Preview {
    GalleryAndTextView()
}
