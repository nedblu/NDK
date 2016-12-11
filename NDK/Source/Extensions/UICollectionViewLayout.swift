//
//  UICollectionViewLayout.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public extension UICollectionViewLayout {
    func register<T: UICollectionReusableView>(decorationView: T.Type) where T: ReusableView {
        register(T.self, forDecorationViewOfKind: T.reusableIdentifier)
    }

    func register<T: UICollectionReusableView>(decorationView: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: Bundle(for: T.self))
        register(nib, forDecorationViewOfKind: T.reusableIdentifier)
    }
}
