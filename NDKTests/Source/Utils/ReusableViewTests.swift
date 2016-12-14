//
//  ReusableViewTests.swift
//  NDK
//
//  Created by eMdOS on 12/13/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import XCTest
@testable import NDK

class ReusableViewTests: XCTestCase {

    // MARK: Test class

    class TestClass: UIView, ReusableView {}

    // MARK: - Test Cases

    func test_reusableIdentifier_isEqualTo_className() {
        XCTAssertEqual(TestClass.reusableIdentifier, "TestClass")
    }

}
