//
//  ViewController.swift
//  Momondo
//
//  Created by Leticia Speda on 09/04/23.
//

import UIKit

final class TermsViewController: UIViewController {

    private lazy var mainVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.translate()
        return stack
    }()

    private lazy var mainHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translate()
        return stack
    }()

    private lazy var logoImage: UIImageView = {
        let image = UIImage(named: "logoMomondo")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.translate()
        return imageView
    }()

    private lazy var termsText: UILabel = {
        let attributedText = createTermsAttributedText()
        let label = UILabel()
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.translate()
        return label
    }()

    private func createTermsAttributedText() -> NSAttributedString {
        let normalText = "Ao usar nosso aplicativo, você concorda com nossos Termos e Condições e nossa "
        let highlightedText = "Politica de Privacidade e Cookies."
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

    private lazy var acceptedButton: UIButton = {
        let button = UIButton()
        button.setTitle("Aceitar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.3838245273, green: 0.109461613, blue: 0.7299745083, alpha: 1)
        button.layer.cornerRadius = 8
        button.translate()
        button.addTarget(self, action: #selector(hadleAction), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    @objc func hadleAction() {
        let controller = LoginViewController()

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
        view.addSubview(mainHStack)
        mainVStack.addArrangedSubview(logoImage)
        mainVStack.addArrangedSubview(termsText)
        mainHStack.addArrangedSubview(acceptedButton)
    }

    private func configureConstraints() {
        NSLayoutConstraint.activate([
            mainVStack.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 12
            ),
            mainVStack.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 12
            ),
            mainVStack.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -12
            ),

            mainHStack.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 12
            ),
            mainHStack.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -12
            ),
            mainHStack.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -16
            ),

            acceptedButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    private func configureStyle() {
        view.backgroundColor = #colorLiteral(red: 0.1051880196, green: 0.01547455508, blue: 0.209243536, alpha: 1)
    }
}
