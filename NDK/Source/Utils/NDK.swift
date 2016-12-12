//
//  NDK.swift
//  NDK
//
//  Created by eMdOS on 12/11/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public enum NDK {
    static var version: String? {
        return ndkBundle?.object(forInfoDictionaryKey: Constants.version) as? String
    }

    static var build: String? {
        return ndkBundle?.object(forInfoDictionaryKey: Constants.build) as? String
    }

    static var hash: String? {
        return ndkBundle?.object(forInfoDictionaryKey: Constants.hash) as? String
    }

    static var description: String {
        let unknownTag: String = "Unknown"

        return "NDK version info:\n\t -sdk-version: \(NDK.version ?? unknownTag)\n\t -sdk-build: \(NDK.build ?? unknownTag)\n\t -sdk-version-hash: \(NDK.hash ?? unknownTag)"
    }
}

fileprivate extension NDK {
    static var ndkBundle: Bundle? {
        return Bundle(identifier: Constants.bundleID)
    }
}

fileprivate extension NDK {
    enum Constants {
        static let bundleID: String = "com.nedblu.dev.NDK"
        static let version: String = "CFBundleShortVersionString"
        static let build: String = "CFBundleVersion"
        static let hash: String = "GIT_COMMIT_HASH"
    }
}
