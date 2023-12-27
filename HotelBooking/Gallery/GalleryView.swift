//
//  GalleryView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 27.12.2023.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        HStack(spacing: 15) {
            ForEach(1..<5) { _ in
                RoundedRectangle(cornerRadius: 15.0)
                    .foregroundStyle(.clear)
                    .frame(width: 343, height: 257)
                    .background(
                        Image("ImageHotel")
                    )
            }
        }
    }
}

#Preview {
    GalleryView()
}
