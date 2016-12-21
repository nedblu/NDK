//
//  ArrayTests.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase {

    func test_comparedAsEqual_whenGivenArrayHasNotDuplicates() {
        // given
        let array: [String] = ["A", "B"]

        // when
        let deduplicatedArray: [String] = array.deduplicate { ($0 == $1) }

        // then
        XCTAssertEqual(array, deduplicatedArray)
    }

    func test_comparedAsNotEqual_andDeduplicatedArrayCountLessThanGivenArray_whenGivenArrayHasDuplicates() {
        // given
        let array: [String] = ["A", "B", "B", "A", "A"]

        // when
        let deduplicatedArray: [String] = array.deduplicate { ($0 == $1) }

        // then
        XCTAssertNotEqual(array, deduplicatedArray)
        XCTAssertTrue(deduplicatedArray.count < array.count)
        XCTAssertEqual(deduplicatedArray.count, Set(array).count)
    }

}
