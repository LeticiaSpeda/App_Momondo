//
//  MomondoTests.swift
//  MomondoTests
//
//  Created by Leticia Speda on 18/05/23.
//

import XCTest
@testable import Momondo

final class TermsViewControllerTests: XCTestCase {
    let sut = TermsViewController()

    func test_whenLoadingScreen_mustDisplayLogoImage() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.logoImage.image, UIImage(named: "logoMomondo"))
    }

    func test_whenLoadingImage_proportionScaleAspectFill() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.logoImage.contentMode, .scaleAspectFill)
    }
}
