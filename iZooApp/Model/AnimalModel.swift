//
//  AnimalModel.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 04/02/24.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}