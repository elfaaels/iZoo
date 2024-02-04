//
//  AnimalDetailView.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 04/02/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                Text(animal.name)
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    

    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[2])
        }
       
    }
}
