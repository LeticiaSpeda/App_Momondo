//
//  LoginViewController.swift
//  Momondo
//
//  Created by Leticia Speda on 17/04/23.
//

import UIKit

final class LoginViewController: UIViewController {

    private lazy var mainVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 12
        stack.translate()
        return stack
    }()

    private lazy var optionsLoginLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign in options"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.textAlignment = .center
        label.translate()
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    private func commonInit() {
        configureHierarchy()
        configureConstrainst()
        configureStyle()
    }

    private func configureHierarchy() {
        view.addSubview(mainVStack)

        mainVStack.addArrangedSubview(optionsLoginLabel)
    }

    private func configureConstrainst() {
        NSLayoutConstraint.activate([
            mainVStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            mainVStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            mainVStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12)
        ])
    }

    private func configureStyle() {
        view.backgroundColor = #colorLiteral(red: 0.1051882282, green: 0.01547421981, blue: 0.2051457763, alpha: 1)
    }
}
