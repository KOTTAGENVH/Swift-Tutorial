//
//  File.swift
//  Swift-Tutorial.swiftpm
//
//  Created by Nowen on 2024-05-28.
//

import Foundation

class Main {
    //a) Use a dictionary to store contact details of students in a school.
    
    func printStudentContacts() {
        //    i) Store these details in a dictionary
        //    Ajith, 0719234121
        //    Wimal, 0723412322
        //    Wasanthi, 0772328713
        var students: [String: String] = ["Ajith": "0719234121", "Wimal": "0723412322", "Wasanthi": "0772328713"]
        
        //    ii) Display all students with their contact details
        for (name, contact) in students {
            print("Name: \(name) \nContact: \(contact)")
        }
        
        //    iv) Display Wimal’s details before update
        print("Wimal before update\(students.filter { $0.key == "Wimal" })")
        var filteredStudents = students.filter { $0.key == "Wimal"}
        if let wimalContact = filteredStudents.first?.key {
            print("Wimal before update: \(wimalContact)")
        } else {
            print("Wimal's contact not found")
        }
        
        // Update or add "wimal" with value "12323"
        if students["wimal"] != nil {
            students.updateValue("12323", forKey: "wimal")
        } else {
            students["wimal"] = "12323"
        }
        
        //Use guard condition to check if wasanthi is there Wasanthi
        guard let wasanthiContact = students["Wasanthi"] else {
            print("Ado Wasanthi naha \(students["Wasanthi"])")
            return
        }
        //Remove value if available
        students.removeValue(forKey: "Wasanthi")
        
        //iii) Add the details of the student Kumuduni, 0726789322
        students["Kumuduni"] = "0726789322"
        
        // Print updated dictionary
        print("Updated Student Contacts:")
        for (name, contact) in students {
            print("Name: \(name) \nContact: \(contact)")
        }
    }
    
    //    b) Use a switch command to print the following messages based on the value of the
    //    variable noOfApples.
    //    noOfApples Message
    //    0 You have no apples
    //    1 You have one apple
    //    2 to 5 You have some apples
    //    > 5 You have many apples
    
    enum Noofapples {
        
        case count(Int)
        
        var description: String {
            switch self {
            case .count(let numberOfApples):
                switch numberOfApples {
                case 0:
                    return "You have no apples \(numberOfApples)"
                case 1:
                    return "You have one apple \(numberOfApples)"
                case 2...5:
                    return "You have \(numberOfApples) apples."
                case let x where x > 5:
                    return "You have \(numberOfApples) apples."
                default:
                    return "Number of apples out of specified range."
                }
            }
        }
        
    }
    
    func appleChecker(_ applenumberPass: Int)->String{
        let applenumber: Int = applenumberPass
        var appleresponse: String = ""
        switch applenumber {
        case 0:
            appleresponse = "You have 0 \(applenumber)"
        case 1:
            appleresponse = "You have 1 \(applenumber)"
        case 2...5:
            appleresponse = "You have 2-5 \(applenumber)"
        case 6...:
            appleresponse = "You have 5< \(applenumber)"
        default:
            appleresponse = "Invalid number"
        }
        return appleresponse
    }
    
    //    Write a function given lengths in feet and inches that returns converted lengths in
    //    mm, cm and meters
    //    convertLengthToMetrics(feet : 10, inches : 5)
    //    → (3175, 317.5, 3.175)
    
    func convertLengthToMetrics(_ feet:Int, _ inches:Int) -> (mm:Double, cm:Double, meters:Double){
        //1feet = 12 inches
        let calculatedinches:Int = feet * 12
        let totalinches:Int =  calculatedinches  + inches
        var mmcoverted: Double = 0
        var cmcoverted: Double = 0
        var metercoverted: Double = 0
        
        cmcoverted = Double(totalinches) * 2.54
        mmcoverted = cmcoverted * 10
        metercoverted = cmcoverted / 100
        
        return (mm:mmcoverted,cm:cmcoverted,meters:metercoverted)
    }
    
    //    Convert the convertLengthToMetrics() to have inout variables so that
    //    the variables mm, cm and meter can be passed as parameters to the function and
    //    get the converted values.
    
    func convertLengthToMetrics2(_ feet:Int, _ inches:Int, mm: inout Double, cm: inout Double, meters: inout Double){
        //1feet = 12 inches
        let calculatedinches:Int = feet * 12
        let totalinches:Int =  calculatedinches  + inches
        
        cm = Double(totalinches) * 2.54
        mm = cm * 10
        meters = cm / 100
        
    }
    
    //    Write four unique function signatures that are overloaded to Input values. You
    //    are not required to write the function code.
    //    Input(…) → display a given prompt and input a string
    //    Input(…) → display a given prompt and input a integer
    //    Input(…) → display a given prompt and input a double
    //    Input(…) → display a given prompt and input a string
    //    The last function is a variation of the first, but the function should behave
    //    differently, e.g. the input appears in the second line after the prompt.
    //
    //    *func Input(prompt: String) -> String
    //    *func Input(prompt: String) -> Int
    //    *func Input(prompt: String) -> Double
    //    *func Input(prompt: String, variation: Bool) -> String
    
    //* The fourth function signature takes an additional boolean parameter (variation) which indicates whether to display the input on the second line after the prompt. This is the requested variation of the first function. By including this parameter, the function can behave differently based on whether variation is true or false.
    
    //    c) Write the following function and convert it to a closure
    //    i) Write a function to calculate the sum of a range between two values
    //    calculateSum(start : 1, to : 100)
    
    func calculateSUM(_ start:Int,_ to:Int)->Int{
        var total:Int = start
        for number in start...to {
            total += number
        }
        return total
    }
    
    //    ii) Convert this function to a closure
    
//    let calculateSUMClosure: (_ start: Int, _ to: Int) -> Int = { (start: Int, to: Int) -> Int in
//        var total: Int = start
//        for number in start...to {
//            total += number
//        }
//        return total
//    }
    let calculateSUMClosure: (Int,Int) -> Int = { start, to  in
         var total: Int = start
         for number in start...to {
             total += number
         }
         return total
     }
//    d) Use the filter function to get the list of students whose attendance is greater than 90%
//    and store it in the variable highAttendanceStudents
//    struct Student {
//    var name: String
//    var attendance: Double
//    }
//    let students = [
//    Student(name: "Alice", attendance: 0.85),
//    Student(name: "Bob", attendance: 0.93),
//    Student(name: "Charlie", attendance: 0.78),
//    Student(name: "David", attendance: 0.91),
//    Student(name: "Eve", attendance: 0.95)
//    ]
//    let highAttendanceStudents = ??
//    print(highAttendanceStudents)
    
        struct Student {
        var name: String
        var attendance: Double
        }
        let students = [
        Student(name: "Alice", attendance: 0.85),
        Student(name: "Bob", attendance: 0.93),
        Student(name: "Charlie", attendance: 0.78),
        Student(name: "David", attendance: 0.91),
        Student(name: "Eve", attendance: 0.95)
        ]
  
//    e) Use the map function to create an array called calculated which will contain the
//    values of the numbers array multiplied by 10
    let numbers = [1, 2, 3, 4, 5]

    
}
let mainforcalculateinstanceclosure = Main()
let calculated = mainforcalculateinstanceclosure.numbers.map{$0 * 10}
print("calculated\(calculated)")
let highAttendanceStudents = mainforcalculateinstanceclosure.students.filter{$0.attendance >= 0.9}
print(highAttendanceStudents)
print("calculateSum Total Clousre 2 \(mainforcalculateinstanceclosure.calculateSUMClosure(1,23))")
let mainforcalculateinstance = Main()
print("calculateSum Total \(mainforcalculateinstance.calculateSUM(1,23))")
//Convert the following Struct to a Class.
//    struct Item {
//    let code: Int
//    let description: String
//    }

class Item {
    var code: Int
    var description: String
    init(
        code: Int,
        description: String
    ) {
        self.code = code
        self.description = description
    }
    
    func addDescription(){
        print("code\(self.code)")
        print("struct converted to class\(self.description + "sdsd")")
    }
}
let schoolName: Set<String> = ["qwewq","edqd"]
//b) Create the following objects for the class that you have written in Part (a)

struct ItemStruct {
    var code: Int
    var description: String
}

//i) Create an object called item1 with the values 100, Eggs
let item1 = Item(code: 100, description: "Eggs")

//ii) Make a copy of the object item1 and call it item2
let item2 = item1
//iii) Modify item2 to have the values 200, Pen
item2.code = 200
item2.description = "Pen"
// Print the values of item1 to see what it contains now
print("item1: code = \(item1.code), description = \(item1.description)")
print("item2: code = \(item2.code), description = \(item2.description)")
//iv) What will item1 now contain? What would be the difference if
//you used a struct instead of a class?


let item3 = ItemStruct(code: 12, description: "123")
var item4 = item3

item4.code = 200
item4.description = "Pen"

print("item3: code = \(item1.code), description = \(item3.description)")
print("item4: code = \(item2.code), description = \(item4.description)")

//The reason why the struct doesnt update the modification to item3 and class does on item1

//When you use a struct in Swift, you are dealing with value types. This means that when you assign item3 to item4, item4 becomes a new copy of item3. Modifying item4 does not affect item3.

//When you use a class in Swift, you are dealing with reference types. This means that when you assign item1 to item2, both variables refer to the same object in memory. Therefore, modifying item2 will also modify item1.


// Create an instance of Main and call the method
let mainInstance = Main()
mainInstance.printStudentContacts()
let applesInRange = Main.Noofapples.count(3)
print(applesInRange.description)
let appleCheckerResponse = mainInstance.appleChecker(7)
print("Apple checker switch response: \(appleCheckerResponse)")
let conversioncheckerresponse = mainInstance.convertLengthToMetrics(10, 5)
print("Conversion Checker Response \(conversioncheckerresponse)")
var mmResult: Double = 0.0
var cmResult: Double = 0.0
var metersResult: Double = 0.0
mainInstance.convertLengthToMetrics2(10, 5,mm: &mmResult,cm: &cmResult, meters: &metersResult)
print("mmResulr\(mmResult)")
print("cmResult\(cmResult)")
print("meters\(metersResult)")
let codeno:Int = 1
let description2:String = "asdasd"
let Iteminstance = Item(code: codeno,description: description2)
Iteminstance.addDescription()

class Child {
    var name:String
    var age: Int
    var mother: String?
    var father: String?
    
    init(name: String, age: Int,father: String?) {
        self.name = name
        self.age = age
        self.father = father
    }
    
    init(name: String, age: Int,mother: String?) {
        self.name = name
        self.age = age
        self.mother = mother
    }
}
let child1 = Child(name: "Emily", age: 10, mother: "Sarah")
print("child1 \(child1.mother)")
let child2 = Child(name: "Jack", age: 8, father: "Mike")
print("child2\(child2.father)")
print("child1e\(child1.age)")

enum Status: String {
    case preprocessing = "preprocessing"
    case shipping = "shipping"
    case delivered = "delivered"
}

let state = "preprocessing"

switch Status(rawValue: state) {
case .preprocessing:
    print("preprocessing")
case .shipping:
    print("shipping")
case .delivered:
    print("delivered")
case .none:
    print("Invalid state")
}

enum stated {
    case preprocessingw
    case shippingw
    case deliveredw
}

let stateses = stated.deliveredw

switch(stateses){
case .preprocessingw:
    print("preprocessinge")
case .shippingw:
    print("shippinge")
case .deliveredw:
    print("deliverede")
}
enum Animals {
//    below code has same meaning
//    case cat
//    case dog
//    case rabbit
    case cat, dog, rabbit, hedgehog
}


struct Person {
    private var _age: Int = 0

    var age: Int {
        get {
            return _age
        }
        set {
            if newValue >= 0 && newValue <= 100 {
                willSet {
                    print("About to set age to \(newValue)")
                }
                _age = newValue
                didSet {
                    print("Age has been set to \(_age)")
                }
            } else {
                print("Invalid age value: \(newValue). Age must be between 0 and 100.")
            }
        }
    }
}

// Example usage
var person = Person()
person.age = 25   // Valid
person.age = 105  // Invalid
person.age = -10  // Invalid

