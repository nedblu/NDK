//
//  NibLoadableView.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
