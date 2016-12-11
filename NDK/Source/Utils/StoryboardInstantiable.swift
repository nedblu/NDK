//
//  StoryboardInstantiable.swift
//  NDK
//
//  Created by eMdOS on 12/10/16.
//  Copyright © 2016 NedBlu. All rights reserved.
//

import Foundation

public protocol StoryboardInstantiable {
    var name: String { get }
    var instance: UIStoryboard { get }
}
