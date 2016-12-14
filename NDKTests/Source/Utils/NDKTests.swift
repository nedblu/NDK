//
//  NDKTests.swift
//  NDK
//
//  Created by eMdOS on 12/11/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import XCTest
@testable import NDK

class NDKTests: XCTestCase {

    private(set) var ndkVersion: String?
    private(set) var ndkBuild: String?
    private(set) var ndkHash: String?

    // MARK: - Set up

    override func setUp() {
        ndkVersion = NDK.version
        ndkBuild = NDK.build
        ndkHash = NDK.hash
    }

    // MARK: - Test Cases

    /**
     *  Since `NDK` info is getting its values from a shell script running in `Build Phases`, we need to verify that
     *  any property is returning `nil`.
     */

    func test_ndk_version_returnsNotNil() {
        XCTAssertNotNil(ndkVersion)
    }

    func test_ndk_build_returnsNotNil() {
        XCTAssertNotNil(ndkBuild)
    }

    func test_ndk_hash_returnsNotNil() {
        XCTAssertNotNil(ndkHash)
    }

    func test_ndk_description_isEqualTo_expectedFormat() {
        if let version = ndkVersion, let build = ndkBuild, let hash = ndkHash {
            let expectedDescription = "NDK version info:\n\t -sdk-version: \(version)\n\t -sdk-build: \(build)\n\t -sdk-version-hash: \(hash)"

            XCTAssertEqual(NDK.description, expectedDescription)
        } else {
            XCTAssertTrue(false)
        }
    }

}
