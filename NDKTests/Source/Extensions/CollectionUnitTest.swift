//
//  CollectionUnitTest.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import XCTest
@testable import NDK

class CollectionUnitTest: XCTestCase {

    // MARK: - Test Cases

    // MARK: Safe index

    // -> Array

    func test_arrayReturnsNil_whenIndexIsLessThan0() {
        // given
        let array: [String] = ["A", "B", "C"]
        let arraysCount: Int = array.count

        XCTAssertTrue(arraysCount > 0)
        XCTAssertEqual(arraysCount, array.count)

        // when
        let expectedResult: String? = array[safe: -1]

        // then
        XCTAssertNil(expectedResult)
    }

    func test_arrayReturnsNil_whenIndexIsEqualToCollectionsCount() {
        // given
        let array: [String] = ["A", "B", "C"]
        let arraysCount: Int = array.count

        XCTAssertTrue(arraysCount > 0)
        XCTAssertEqual(arraysCount, array.count)

        // when
        let expectedResult: String? = array[safe: array.count]

        // then
        XCTAssertNil(expectedResult)
    }

    func test_arrayReturnsNil_whenIndexIsGreaterThanCollectionsCount() {
        // given
        let array: [String] = ["A", "B", "C"]
        let arraysCount: Int = array.count

        XCTAssertTrue(arraysCount > 0)
        XCTAssertEqual(arraysCount, array.count)

        // when
        let expectedResult: String? = array[safe: (array.count + 1)]

        // then
        XCTAssertNil(expectedResult)
    }

    func test_arrayReturnsNotNil_whenIndexIsWithinCollectionsBounds() {
        // given
        let array: [String] = ["A", "B", "C"]
        let arraysCount: Int = array.count

        XCTAssertTrue(arraysCount > 0)
        XCTAssertEqual(arraysCount, array.count)

        // when
        for (index, _) in array.enumerated() {
            let expectedResult: String? = array[safe: index]

            // then
            XCTAssertNotNil(expectedResult)
        }
    }

}
