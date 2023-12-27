//
//  CustomNavBarItemView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 27.12.2023.
//

import SwiftUI

struct CustomNavBarItemView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
            Button(action: { dismiss() }) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.black)
            }
    }
}

#Preview {
    CustomNavBarItemView()
}
