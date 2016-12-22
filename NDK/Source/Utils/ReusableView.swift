//
//  ReusableView.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public protocol ReusableView: class {
    static var reusableIdentifier: String { get }
}

public extension ReusableView where Self: UIView {
    public static var reusableIdentifier: String {
        return String(describing: self)
    }
}
