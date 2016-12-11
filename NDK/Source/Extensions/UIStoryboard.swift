//
//  UIStoryboard.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    func viewController<T: StoryboardIdentifiable>(_ viewController: T.Type) -> T? where T: UIViewController {
        return self.instantiateViewController(withIdentifier: T.storyboardID) as? T
    }
}

public extension UIStoryboard {
    convenience init(storyboard: StoryboardInstantiable, bundle: Bundle? = nil) {
        self.init(name: storyboard.name, bundle: bundle)
    }
}
