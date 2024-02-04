//
//  CoverImageView.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 04/02/24.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                     .resizable()
                 .scaledToFill()
            } //: LOOP
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
