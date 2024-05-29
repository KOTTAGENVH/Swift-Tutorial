class Main{
    
    //    b) Use a switch command to print the following messages based on the value of the
    //    variable noOfApples.
    //    noOfApples Message
    //    0 You have no apples
    //    1 You have one apple
    //    2 to 5 You have some apples
    //    > 5 You have many apples
    
    //if, Switch, for, while, repeat while
    //if, Switch
    func CheckingOptionals(_ value:Int){
        var valueassigned = value
        if(valueassigned == 0){
            print("You have no apples")
        }else if(valueassigned == 1){
            print("You have one apple")
        }else if(valueassigned >= 2 && valueassigned <= 5){
            print("2 to 5 You have some apples")
        }else if(valueassigned > 5){
            print("> 5 You have many apples")
        }else{
            print("Sorry your value is not an option \(valueassigned)")
        }
        
        switch valueassigned {
        case 0:
            print("You have no apples")
        case 1:
            print("You have one apple")
        case 2...5:
            print("You have some apples")
        case 6...:
            print("You have many apples")
        default:
            print("Sorry your value is not an option \(valueassigned)")
        }
    }
    
    //for, while, repeat while
    func checkingLoops(_ arrayLoop: [Int]) {
        let localarray = [1,3,2,3,4]
        for value in localarray {
            print("Values in the local array: \(value)")
        }
        for value in arrayLoop {
            print("Values in the array loop: \(value)")
        }
        var numberarrayLoop = 1
        var numberlocalArray = 1
        var numberlocalrepeatArray = 1
        var index:Int = 0
        var index2:Int = 0
        var index3:Int = 0
        while index < localarray.count {
            if localarray[index] < 5 {
                print("local array index \(localarray[index])")
                numberlocalArray += 1
            }
            index += 1
        }
        print("numberlocalArray = \(numberlocalArray)")
        
        while index2 < arrayLoop.count {
            if arrayLoop[index2] < 5 {
                print("arrayloop index \(arrayLoop[index2])")
                numberarrayLoop += 1
            }
            index2 += 1
        }
        print("numberArrayLoop = \(numberarrayLoop)")
        
        repeat {
            numberlocalrepeatArray += 1
            index3 += 1
        } while index3<localarray.count
        
        print("numberlocalrepeatArray \(numberlocalrepeatArray)")
    }
    
    func checkingCondition(_ animal:String){
        guard animal.uppercased() == "CAT" else {
            print("Sorry it's not a cat")
            return
        }
        print("It is a cat")
        guard animal.lowercased() == "cat" else {
            print("Sorry it's not a cat2")
            return
        }
        print("It is a cat2")
    }
    
    func strideexample(){
        for i in stride(from: 0, to: 0.5, by: 0.1) {
            print(i)
        }
        //Both those examples use stride(from:to:by:),
        //which counts from the start point up to by excluding the to parameter.
        //If you want to count up and including the to parameter,
        //you should use stride(from:through:by:), like this:
        for i in stride(from: 0, through: 10, by: 2) {
            print(i)
        }
    }
    
}

let maininstance = Main()
maininstance.CheckingOptionals(5)
let arrayLoop = [1,2,3,4,5,6,7,8]
maininstance.checkingLoops(arrayLoop)
maininstance.checkingCondition("Cat")
