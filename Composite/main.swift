//
//  main.swift
//  Composite
//
//  Created by Choiwansik on 2022/08/29.
//

import Foundation

internal func main() {

    var root = Folder(name: "root")

    root.add(unit: File(name: "a.txt", size: 1000))
    root.add(unit: File(name: "b.txt", size: 2000))
    root.add(unit: File(name: "c.txt", size: 3000))

    var sub1 = Folder(name: "sub1")
    sub1.add(unit: File(name: "s1a.txt", size: 800))
    sub1.add(unit: File(name: "s1b.txt", size: 600))
    root.add(unit: sub1)

    var sub2 = Folder(name: "sub2")
    sub2.add(unit: File(name: "s2a.txt", size: 851))
    sub2.add(unit: File(name: "s2b.txt", size: 651))
    root.add(unit: sub2)

    root.printList()
}

main()
