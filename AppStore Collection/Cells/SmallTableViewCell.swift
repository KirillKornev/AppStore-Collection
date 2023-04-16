//
//  SmallTableViewCell.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 16.04.2023.
//

import UIKit

class SmallTableCell: UICollectionViewCell {

    // UI
    let name = UILabel()
    let imageView = UIImageView()

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)

        name.font = UIFont.preferredFont(forTextStyle: .title2)
        name.textColor = .label

        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true

        let stackView = UIStackView(arrangedSubviews: [imageView, name])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.spacing = 20
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("How many times do I have to tell you? THIS. ISN'T. SUPPORTED.")
    }
}

// MARK: - SelfConfiguringCell

extension SmallTableCell: SelfConfigurableCell {

    static let reuseIdentifier: String = "SmallTableCell"

    func configure(with app: App) {
        name.text = app.name
        imageView.image = UIImage(named: app.image)
    }
}
