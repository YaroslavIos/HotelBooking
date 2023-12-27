//
//  ContentView.swift
//  HotelBooking
//
//  Created by Ярослав Любиченко on 20.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            NavigationView {
                ScrollView {
                    GalleryAndTextView()
                    HotelInformationView()
                    
                        NavigationLink(destination: HotelDetailView()) {
                            Text("К выбору отеля")
                                .frame(width: 343, height: 48, alignment: .center)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(15.0)
                        }
                }
                .navigationTitle("Отель")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    ContentView()
}
