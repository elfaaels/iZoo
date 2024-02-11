//
//  CenterModifier.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 11/02/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
