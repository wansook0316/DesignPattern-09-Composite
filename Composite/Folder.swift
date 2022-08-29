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

    internal func printList() {
        self.list(indent: "", unit: self)
    }

    private func list(indent: String, unit: Unit) {
        guard let folder = unit as? Folder else {
            print("\(indent) \(unit.description)")
            return
        }

        print("\(indent) +  \(unit.description)")
        folder.units.forEach { unit in
            self.list(indent: "\(indent)    ", unit: unit)
        }
    }

    private var units = [Unit]()

}
