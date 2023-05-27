//
//  LoginViewControllerTests.swift
//  MomondoTests
//
//  Created by Leticia Speda on 18/05/23.
//

import XCTest
@testable import Momondo

final class LoginViewControllerTests: XCTestCase {
    let sut = LoginViewController()

    func test_whenLoadingScreen_displaysTheTitle() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.optionsLoginText.text, "Opções de login")
    }

    func test_whenLoadingScreen_displaysTheTitleColorWhite() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.optionsLoginText.textColor, .white)
    }

    func test_whenLoadingScreen_displaysTheTitleFontHeavyAndSize20() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(
            sut.optionsLoginText.font,
            .systemFont(ofSize: 20, weight: .heavy)
        )
    }

    func test_whenLoadingScreen_displaysTheTitleIsTheCenter() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.optionsLoginText.textAlignment, .center)
    }

    func test_whenLoadinScreen_displayTheTitleGoogle() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.googleButton.titleLabel?.text, "Google")
    }

    func test_whenLoadinScreen_displayTheTitleGoogleColorBlack() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.googleButton.titleLabel?.textColor, .black)
    }

    func test_whenLoadinScreen_displayTheTitleGoogleFontSemiBoldAndSize18() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(
            sut.googleButton.titleLabel?.font,
            .systemFont(ofSize: 18, weight: .semibold)
        )
    }

    func test_whenLoadindScreen_googleButton_displayTheCorneRadius10() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.googleButton.layer.cornerRadius, 10)
    }

    func test_whenLoadindScreen_displayTheImageSideLeftToRight() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.googleButton.semanticContentAttribute, .forceLeftToRight)
    }

    func test_whenLoadinScreen_displayTheTitleFacebook() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.facebookButton.titleLabel?.text, "Facebook")
    }

    func test_whenLoadinScreen_displayTheTitleFacebookColorBlack() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.googleButton.titleLabel?.textColor, .black)
    }

    func test_whenLoadinScreen_displayTheTitleFacebookFontSemiBoldAndSize18() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(
            sut.facebookButton.titleLabel?.font,
            .systemFont(ofSize: 18, weight: .semibold)
        )
    }

    func test_whenLoadindScreen_facebookButton_displayTheCorneRadius10() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.facebookButton.layer.cornerRadius, 10)
    }

    func test_whenLoadindScreen_facebookBotao_displayTheImageSideLeftToRight() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.facebookButton.semanticContentAttribute, .forceLeftToRight)
    }

    func test_whenLoadingScreen_displayTheTitleEmail() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.emailButton.titleLabel?.text, "Continue com Email")
    }

    func test_whenLoadinScreen_displayTheTitleEmailColorBlack() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.emailButton.titleLabel?.textColor, .black)
    }

    func test_whenLoadinScreen_displayTheTitleEmailFontSemiBoldAndSize18() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(
            sut.emailButton.titleLabel?.font,
            .systemFont(ofSize: 18, weight: .semibold)
        )
    }

    func test_whenLoadindScreen_emailButton_displayTheCorneRadius10() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.emailButton.layer.cornerRadius, 10)
    }

    func test_whenLoadindScreen_emailBotao_displayTheImageSideLeftToRight() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.emailButton.semanticContentAttribute, .forceLeftToRight)
    }

    func test_whenLoadingScreen_registerButtonTitleRegistre() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.registreButton.titleLabel?.textColor, .systemBlue)
    }

    func test_whenLoadingScreen_registerButtonTitleRegister_TextColorBlack() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.registreButton.titleLabel?.font, .systemFont(ofSize: 18, weight: .bold))
    }

}
