//
//  StoryboardIdentifiable.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import UIKit

public protocol StoryboardIdentifiable: class {
    static var storyboardID: String { get }
    static func from(storyboard: UIStoryboard) -> Self?
    static func from(storyboard: StoryboardInstantiable) -> Self?
}

// MARK: - StoryboardIdentifiable | UIViewController

public extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardID: String {
        return String(describing: self)
    }

    static func from(storyboard: UIStoryboard) -> Self? {
        return fromStoryboard(type: self, storyboard: storyboard)
    }

    static func from(storyboard: StoryboardInstantiable) -> Self? {
        return fromStoryboard(type: self, storyboard: storyboard.instance)
    }
}

// MARK: - (Private) StoryboardIdentifiable | UIViewController

fileprivate extension StoryboardIdentifiable where Self: UIViewController {
    fileprivate static func fromStoryboard<T>(type: T.Type, storyboard: UIStoryboard) -> T? {
        return storyboard.instantiateViewController(withIdentifier: self.storyboardID) as? T
    }
}
