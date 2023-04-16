//
//  Section.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 15.04.2023.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
