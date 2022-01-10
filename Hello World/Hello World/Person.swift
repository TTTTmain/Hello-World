//
//  Person.swift
//  Hello World
//
//  Created by Timothy Tan on 10/1/2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var age:Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func greeting() -> String {
        return "Hello \(self.name). You are \(self.age) years old!"
    }

}
