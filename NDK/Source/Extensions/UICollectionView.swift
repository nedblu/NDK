//
//  UICollectionView.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public extension UICollectionView {
    enum SupplementaryViewKind {
        case header
        case footer

        var rawValue: String {
            switch self {
            case .header:
                return UICollectionElementKindSectionHeader
            case .footer:
                return UICollectionElementKindSectionFooter
            }
        }
    }
}

public extension UICollectionView {
    public func register<T: UICollectionViewCell>(cell: T.Type) where T: ReusableView {
        register(T.self, forCellWithReuseIdentifier: T.reusableIdentifier)
    }

    public func register<T: UICollectionViewCell>(cell: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: Bundle(for: T.self))
        register(nib, forCellWithReuseIdentifier: T.reusableIdentifier)
    }

    public func register<T: UICollectionReusableView>(view: T.Type, asSupplementaryViewKind kind: SupplementaryViewKind) where T: ReusableView {
        register(T.self, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: T.reusableIdentifier)
    }

    public func register<T: UICollectionReusableView>(view: T.Type, asSupplementaryViewKind kind: SupplementaryViewKind) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: Bundle(for: T.self))
        register(nib, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: T.reusableIdentifier)
    }
}

public extension UICollectionView {
    public func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reusableIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reusableIdentifier)")
        }
        return cell
    }

    public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind kind: SupplementaryViewKind, forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let view = dequeueReusableSupplementaryView(ofKind: kind.rawValue, withReuseIdentifier: T.reusableIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue view with identifier: \(T.reusableIdentifier)")
        }
        return view
    }
}
