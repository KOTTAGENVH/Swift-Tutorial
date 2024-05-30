// function and closes
class Main {
    func marks() {
        var userMark: Int = 0
        var totalmark: Int = 0
        var count: Int = 0
        var input: String = ""
        var mark: Int = 0
        
        repeat {
            print("Enter the mark: ")
            if input == readLine(), mark == Int(input){
                userMark = Int(mark)
                totalmark += Int(mark)
                count+=1
                userMark = 0
            } else {
                print("Pls enter a number")
                input == readLine()
                if(input != ""){
                    mark = Int(input) ?? <#default value#>
                    userMark = mark
                    totalmark += mark
                    count+=1
                    userMark = 0
                }
            }
        } while input != "-999"
        
        if count > 0 {
            print("Average: \(Double(totalmark) / Double(count))")
        } else {
            print("No marks entered")
        }
    }
    
    func argumentchecker (argum a:Int, water b: inout Int){
        let ans = a + b
        print(ans)
        b = ans
        
    }
    
    let argumentClosure: (Int, inout Int) -> Void = { a,b in
        let ans = a + b
        print(ans)
        b = ans
    }
    
    func variadicChecker(numbers: Int...) -> Int{
        var total: Int = 0
        for number in numbers {
            total += number
        }
        print("total \(total)")
        return total
    }
    
    let variadicClosure: (Int...) -> Int = {
        numbers in
        var total: Int = 0
        for number in numbers {
            total += number
        }
        print("total \(total)")
        return total
    }
}

var waterResult: Int = 2
// To call the function and execute the loop
let mainInstance = Main()
//mainInstance.marks()
mainInstance.argumentchecker(argum: 1, water: &waterResult)
mainInstance.variadicChecker(numbers: 1,3,23,34,34,34,4,34,34,34,3434,34,34,34,3)
mainInstance.argumentClosure(1,  &waterResult)
mainInstance.variadicClosure( 1,3,23,34,34,34,4,34,34,34,3434,34,34,34,3)
