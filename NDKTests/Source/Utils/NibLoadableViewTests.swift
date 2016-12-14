//
//  NibLoadableViewTests.swift
//  NDK
//
//  Created by eMdOS on 12/13/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import XCTest
@testable import NDK

class NibLoadableViewTests: XCTestCase {

    // MARK: Test class

    class TestClass: UIView, NibLoadableView {}

    // MARK: - Test Cases

    func test_nibName_isEqualTo_className() {
        XCTAssertEqual(TestClass.nibName, "TestClass")
    }

}
