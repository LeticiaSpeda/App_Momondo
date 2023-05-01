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

    private lazy var optionsLoginText: UILabel = {
        let label = UILabel()
        label.text = "Opções de login"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.textAlignment = .left
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

    private lazy var appleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue com Apple", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.setImage(UIImage(named: "apple"), for: .normal)
        button.semanticContentAttribute = .forceLeftToRight
        button.translate()
        return button
    }()

    private lazy var registreText: UILabel = {
        let attributedText = createTermsAttributedText()
        let label = UILabel()
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translate()
        return label
    }()

    private func createTermsAttributedText() -> NSAttributedString {
        let normalText = "Não possui uma conta? "
        let highlightedText = "Registre-se"
        let attributedText = NSMutableAttributedString()
        let normalTextAttribute = NSAttributedString(string: normalText, attributes: [
            .foregroundColor: UIColor.white
        ])
        attributedText.append(normalTextAttribute)
        let highlightedTextAttribute = NSAttributedString(string: highlightedText, attributes: [
            .foregroundColor: UIColor.systemBlue
        ])
        attributedText.append(highlightedTextAttribute)
        return attributedText
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    @objc func handleCancel() {
        dismiss(animated: true)
    }

    private func commonInit() {
        configureHierarchy()
        configureConstrainst()
        configureStyle()
    }

    private func configureHierarchy() {
        view.addSubview(mainVStack)

        mainVStack.addArrangedSubview(optionsLoginText)
        mainVStack.addArrangedSubview(UIView())
        mainVStack.addArrangedSubview(googleButton)
        mainVStack.addArrangedSubview(facebookButton)
        mainVStack.addArrangedSubview(emailButton)
        mainVStack.addArrangedSubview(appleButton)
        mainVStack.addArrangedSubview(registreText)
        mainVStack.addArrangedSubview(UIView())

    }

    private func configureConstrainst() {
        NSLayoutConstraint.activate([
            mainVStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            mainVStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            mainVStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            mainVStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),

            googleButton.heightAnchor.constraint(equalToConstant: 35),

            facebookButton.heightAnchor.constraint(equalToConstant: 35),

            emailButton.heightAnchor.constraint(equalToConstant: 35),

            appleButton.heightAnchor.constraint(equalToConstant: 35)
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
