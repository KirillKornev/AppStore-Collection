//
//  SelflConfigurableCell.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 15.04.2023.
//

import Foundation

protocol SelfConfigurableCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
