//
//  Unit.swift
//  Composite
//
//  Created by Choiwansik on 2022/08/29.
//

import Foundation

internal protocol Unit {

    var name: String { get }

    var description: String { get }

    var size: Int { get }

}

extension Unit {

    internal var description: String {
        return "\(self.name)(\(self.size))"
    }
    
}
