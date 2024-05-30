import Foundation

class ItemClass{
    var code: Int
    var description: String
    init(
        code:Int,
        description:String
    ){
        self.code = code
        self.description = description
    }
}

class Main{

}

//a) Convert the following Struct to a Class.
struct Item {
let code: Int
let description: String
}
//(6 Marks)
//b) Create the following objects for the class that you have written in Part (a)

let item3 = Item(code: 2, description: "adas")


//i) Create an object called item1 with the values 100, Eggs

let item1 = ItemClass(code: 100,description: "Eggs")

//ii) Make a copy of the object item1 and call it item2

let item2 = item1

//iii) Modify item2 to have the values 200, Pen

item2.code = 200
item2.description = "Pen"

//iv) What will item1 now contain? What would be the difference if //you used a struct instead of a class?
//200 and eggs
//In class it creates a reference as a result it points to the same memory but in struct it doesnt so struct would be for item1 100 and Eggs



class Person {
    let name: String = "Machan"
    let age: Int = 58
    //Computed properties
    var canSignup: Bool {
        return age < 50
    }
}

let personinstance = Person()

if personinstance.canSignup{
    print("Party man")
} else {
    print("Gihila nidaganin")
}

//Multiple constructors set and get
struct Length {
    var mm: Int = 0 {
        // observer properties
        willSet {
            print("About to change mm to \(newValue)")
            
        }
        didSet {
            if mm < 0 {
                mm = oldValue
                print("Length cannot be negative")
            }else {
                print("ok")
            }
        }
    }
    var cm : Int {
        set(cm) {
            self.mm = cm * 10
        }
        get {
            return self.mm / 10
        }
    }
    var km : Int { // read only property
       get {
           return self.mm / 1000
       }
    }
    var inches : Float {
        set (myinch) {
            self.mm = Int(myinch * 25.4)
        }
        get {
            return Float(self.mm) / 25.4
        }
    }
    init(mm: Int) {
        self.mm = mm
    }
    // additional constructors
    init(cm: Int) {
        mm = cm * 10
        if (self.mm < 0) {
           mm = 0
        }
    }
    init(inches: Float) {
        self.mm = Int(inches * 25.4)
    }
    func printLength() {
        print("length is \(mm)mm")
    }
}
var l1 = Length(cm: 240000)
l1.printLength()
//l1.inches = 10 // set
l1.printLength()
print(l1.km) // get
l1.inches = 20
l1.printLength()
l1.inches = -5.0
l1.printLength()

protocol CanBreathe {
    /// Protocols can have a function which don't have any body.
    func breathe()
}

/// Normally structure don't allow the inheritance between structures,
/// but it accepts `protocols`
struct Animal: CanBreathe {
    func breathe() {
        print("Animal breathing...")
    }
}

protocol CanJump {
    ///```
    ///func jump() {
    /// "Jumping..."
    ///}
    ///```
    /// wee cannot define functions code inside of protocol
    /// To define it, we need to use `extension`
    func jump()
}

/// We can use default delcaration
extension CanJump {
    func jump() {
        print("Jumping...")
    }
}

struct Cat: CanJump {
    
}



enum Animals {
//    below code has same meaning
//    case cat
//    case dog
//    case rabbit
    case meow, dog, rabbit, hedgehog
}

let animalsound =  Animals.meow

switch animalsound {
case .meow:
    print("cat")
default:
    print("Mehe sathu naha bn")
}

//In heretence

class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    
    /// Designated initializer should not rely on another designated initializer
    /// ```
    /// init(...){
    ///     init(...)
    /// }
    /// ```
    /// This code will occur error
    init(){
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ){
        self.model = model
        self.year = year
    }
    
    convenience init(
        model: String
    ) {
        self.init(model: model, year: 2023)
    }
    
    /// Diferences between `convenience init` and `init`.
    /// https://stackoverflow.com/questions/40093484/what-is-the-difference-between-convenience-init-vs-init-in-swift-explicit-examp
    ///
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
        
        /// Inside of designated initializer, you cannot call convinience initializer
        /// But vise versa works
        /// `super.init(model: "Y")` will occur syntax error
    }
}

//convinence init
class Polygon {
    var points: [CGPoint]

    init(points: [CGPoint]) {
        self.points = points
    }
}

//convenience init(squareWithLength length: CGFloat) {
//    let points = [
//        CGPoint(x: 0, y: 0),
//        CGPoint(x: length, y: 0),
//        CGPoint(x: length, y: length),
//        CGPoint(x: 0, y: length),
//    ]
//
//    self.init(points: points)
//}
