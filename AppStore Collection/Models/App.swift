//
//  App.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 15.04.2023.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
