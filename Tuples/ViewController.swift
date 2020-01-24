//
//  ViewController.swift
//  Tuples
//
//  Created by Suresh Shiga on 24/01/20.
//  Copyright © 2020 Suresh Shiga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        describeWeekeday((0, "Sunday"))
        
        let chep = retrieveStudentRecord(studentId: 10343)
        print(chep!)
    }

    private func initTuples() {
        let tuple0 = ()
        let tuple1 = (1, ["three"])
        let tuple2 = (1, true, ["three"], "name")
        let tuple3 = ("a", tuple2, tuple0,tuple1)
    }
    
    private func accessTupleElement() {
        let jan = (1, "january")
        print("Month full name: \(jan.1)")
    }
    
    private func decomposeValues() {
        let jan = (1, "january")
        let (order, fullname) = jan
        
        print("Order is \(order)")
        
        print("Full name is \(fullname)")
        
    }
    
    private func nameTheElements() {
        let jan = (order: 1, fullname: "january")
        print("Order is \(jan.order)")
        print("Full name is \(jan.fullname)")
    }
    
    
    private func mutability() {
        var tupAsVariable = (3,"Three")
        tupAsVariable.0 = 6
        print(tupAsVariable.0)
        
        tupAsVariable = (7, "seven")
        print(tupAsVariable)
        
    }
    
    
    private func describeWeekeday(_ weekday: (oredr: Int, name: String)) {
        print("Day \(weekday.oredr) in a week is  \(weekday.name)")
    }
    
    private func retrieveStudentRecord(studentId: Int) -> (name: String, age: Int)? {
        if studentId < 10000 {
            print("Didn't find thw student with the id: \(studentId)")
            return nil
        }
        
        let student = ("John Smith", 15)
        print("Found the student: \(student) with the id: \(studentId)")
        return student
    }
    
    
    private func parameters() {
        let student: Dictionary<String, Any> = ["name": "jogn", "age": 14, "gender": "Male"]
        
        for item  in student {
            print("For key: \(item.key), the value is \(item.value)")
        }
        
        var numbers: Set = [1,2,3,4,5]
        
        print("Insert a number already in the set: \(numbers.insert(3))")
        print("Insert a number not in the set: \(numbers.insert(8))")
        
        
    }
}

