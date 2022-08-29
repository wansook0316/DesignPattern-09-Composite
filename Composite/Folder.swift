//
//  Folder.swift
//  Composite
//
//  Created by Choiwansik on 2022/08/29.
//

import Foundation

internal struct Folder: Unit {

    internal let name: String
    internal var size: Int {
        self.units.reduce(.zero) { partialResult, unit in
            partialResult + unit.size
        }
    }

    internal init(name: String) {
        self.name = name
    }

    internal mutating func add(unit: Unit) {
        self.units.append(unit)
    }

    private var units = [Unit]()

}
