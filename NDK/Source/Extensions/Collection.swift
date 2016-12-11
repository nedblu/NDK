//
//  Collection.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

// MARK: - Safe index

public extension Collection where Indices.Iterator.Element == Index {
    /// Returns the `element` at the specified index if it is within bounds, otherwise returns `nil`.
    subscript (safe index: Index) -> Generator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
