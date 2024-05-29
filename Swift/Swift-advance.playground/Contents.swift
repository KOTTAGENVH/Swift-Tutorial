class Main{
    //Q1 – Swift Language Constructs
    
    //Arrays, Dictionaries, Sets
    
    var s = ["sds":1232,"asd":21323]
    var sa=[
        "a":[5,4],
        "b":[6,3],
        "c":[7,41]
    ]
    
    let twoDimensional = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14, 15], [16, 17, 18], [19, 20, 21], [22]]
    let threeDimensional = [[[1], [2]], [[3], [4], [5]]]
    
    var sets = Set([1,2,3,4,5,6])
    var array = [1, 2, 3]
    
    func printS(){
        for (name,desc) in s {
            print ("Ado meh dictonary \(name) + \(desc)")
        }
        //Sort the dictionary in descending order
        print("Sorted in descending order \(s.sorted(by: >))")
        
        //Sort the dictionary in ascending order
        print("Sorted in ascending order \(s.sorted(by: <))")
        
        //Have the dictionary sorted to ascending by the key value
        let sortedArray = s.sorted { $0.key < $1.key }
        print("Update S \(sortedArray)")
        
        //Have the dictionary sorted to ascending by the  value
        let sortedArraye = s.sorted { $0.value < $1.value }
        print("Update Se \(sortedArraye)")
        
        //Convert back to a dictionary
        let sortedDictionary = Dictionary(uniqueKeysWithValues: sortedArray)
        print("Sorted ascending order as dictionary: \(sortedDictionary)")
        
        s = sortedDictionary
        print("updated s \(s)")
        
        //viewing for the SA dictionary
        for (name,no) in sa {
            print("SA dictionary \(name) + \(no.first)")
            print("SA dictionary 2nd \(name) + \(no[1])")
            print("SA dictionary last \(name) + \(no.last)")
        }
        
        // Sorting the dictionary in descending order based on the second element of the value arrays
        let sortedSA = sa.sorted { $0.value[1] > $1.value[1] }
        
        // Printing the sorted dictionary
        print("Sorted in descending order \(sortedSA)")
        
        //Three dimensional and two dimensional arrays
        for twodimensionarray in threeDimensional {
            for onedimensionarray in twodimensionarray {
                for value in onedimensionarray {
                    print("Three dimensional Array\(onedimensionarray)")
                }
            }
        }
        
        //Two dimensional and two dimensional arrays
        for onedimensionarray in twoDimensional {
            for value in onedimensionarray {
                print("Two dimensional Array\(value)")
            }
        }
        
        //sets
        for value in sets{
            print("Sets Oringinal print \(value)")
        }
        
        //add set an exsisting value
        sets.insert(2)
        
        //After update print
        for value in sets{
            print("Sets updated print \(value)")
        }
        
        //add set a new value
        sets.insert(9)
        
        //After update print
        for value in sets{
            print("Sets new updated print \(value)")
        }
        
        //Sets eleminates duplicates and only add new ones
        
        //remove number in the set
        sets.remove(2)
        //After update print
        for value in sets{
            print("Sets new delete print \(value)")
        }
        let maxi = sets.max()
        print("Sets max print \(maxi)")
        print("Sets min print \(sets.min())")
        
        array.append(0)
        for value in array{
            print("array new 0 print \(value)")
        }
        array.append(4)
        for value in array{
            print("array new 4 print \(value)")
        }
    }
}


let mainInstance = Main()
mainInstance.printS()
