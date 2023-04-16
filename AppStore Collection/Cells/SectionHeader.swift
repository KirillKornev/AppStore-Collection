//
//  SectionHeader.swift
//  AppStore Collection
//
//  Created by Kirill Kornev on 16.04.2023.
//

import UIKit

final class SectionHeader: UICollectionReusableView {

    // UI
    let title = UILabel()
    let subtitle = UILabel()

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Stop trying to make storyboards happen.")
    }

    // MARK: - Private

    private func setup() {
        let separator = UIView(frame: .zero)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = .quaternaryLabel

        title.textColor = .label
        title.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 22, weight: .bold))
        subtitle.textColor = .secondaryLabel

        let stackView = UIStackView(arrangedSubviews: [separator, title, subtitle])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        addSubview(stackView)

        NSLayoutConstraint.activate([
            separator.heightAnchor.constraint(equalToConstant: 1),

            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])

        stackView.setCustomSpacing(10, after: separator)
    }
}

// MARK: - SelflConfigurableCell

extension SectionHeader: SelfConfigurableCell {

    static var reuseIdentifier: String {
        "SectionHeader"
    }

    func configure(with app: App) {}
}
