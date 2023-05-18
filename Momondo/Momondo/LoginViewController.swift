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
        stack.spacing = 20
        stack.translate()
        return stack
    }()

    private lazy var mainHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.translate()
        return stack
    }()

    private lazy var optionsLoginText: UILabel = {
        let label = UILabel()
        label.text = "Opções de login"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.textAlignment = .center
        label.translate()
        return label
    }()

    private lazy var googleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Google", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.setImage(UIImage(named: "google"), for: .normal)
        button.semanticContentAttribute = .forceLeftToRight
        button.translate()
        return button
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.semanticContentAttribute = .forceLeftToRight
        button.translate()
        return button
    }()

    private lazy var emailButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue com Email", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.setImage(UIImage(named: "email"), for: .normal)
        button.semanticContentAttribute = .forceLeftToRight
        button.translate()
        return button
    }()

    private lazy var registreText: UILabel = {
        let label = UILabel()
        label.text = "Não possui uma conta?"
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.textColor = .white.withAlphaComponent(0.8)
        label.numberOfLines = 3
        label.translate()
        return label
    }()

    private lazy var registreButton: UIButton = {
        let titleString = NSAttributedString(string: "Registre-se")
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlinedTitleString = NSAttributedString(string: "Registre-se", attributes: underlineAttribute)

        let button = UIButton()
        button.setAttributedTitle(underlinedTitleString, for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        button.titleLabel?.textAlignment = .left
        button.translate()
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    @objc func handleCancel() {
        dismiss(animated: true)
    }

    @objc func handleRegister() {
        let controller = RegisterViewController()

        let navigation = UINavigationController(rootViewController: controller)
        navigation.modalPresentationStyle = .overFullScreen
        present(navigation, animated: true)
    }

    private func commonInit() {
        configureHierarchy()
        configureConstraints()
        configureStyle()
    }

    private func configureHierarchy() {
        view.addSubview(mainVStack)

        mainVStack.addArrangedSubview(optionsLoginText)
        mainVStack.addArrangedSubview(googleButton)
        mainVStack.addArrangedSubview(facebookButton)
        mainVStack.addArrangedSubview(emailButton)
        mainVStack.addArrangedSubview(mainHStack)

        mainHStack.addArrangedSubview(registreText)
        mainHStack.addArrangedSubview(registreButton)

    }

    private func configureConstraints() {
        NSLayoutConstraint.activate([
            mainVStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            mainVStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            mainVStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),

            mainHStack.leadingAnchor.constraint(equalTo: mainVStack.leadingAnchor),
            mainHStack.trailingAnchor.constraint(equalTo: mainVStack.trailingAnchor),

            googleButton.heightAnchor.constraint(equalToConstant: 35),

            facebookButton.heightAnchor.constraint(equalToConstant: 35),

            emailButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }

    private func configureStyle() {
        view.backgroundColor = #colorLiteral(red: 0.1051882282, green: 0.01547421981, blue: 0.2051457763, alpha: 1)
        let image = UIImage(systemName: "xmark.circle.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        navigationItem.rightBarButtonItem = .init(
            image: image, style: .plain,
            target: self,
            action: #selector(handleCancel))
    }
}
