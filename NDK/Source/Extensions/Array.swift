//
//  Array.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

// MARK: - deduplicate

public extension Array {
    func deduplicate(_ comparing: (_ lhs: Element, _ rhs: Element) -> Bool) -> [Element] {
        var results: [Element] = []

        forEach({ (element) in
            let existingElement = results.filter({ comparing(element, $0) })
            if (existingElement.count == 0) {
                results.append(element)
            }
        })

        return results
    }
}
