class Main{
//    f) Use the map function to create a dictionary containing student name and their average.
//    (5 Marks)
//    struct Student {
//    let name: String
//    let marks: [Int]
//    var average: Double {
//    return (marks[0]+marks[1]+marks[2]) / Double(marks.count)
//    }
//    }
//    let studentDataset = [
//    Student(name: "John", marks: [85, 90, 80]),
//    Student(name: "Alice", marks: [75, 80, 85]),
//    Student(name: "Michael", marks: [90, 95, 92])
//    ]
//    let studentDictionary = Dictionary( ???)
//    // Example usage
//    for (name, average) in studentDictionary {
//    print("Name: \(name), Average Marks: \(average)")
//    }
    
    //Answer
//        struct Student {
//        let name: String
//        let marks: [Int]
//        var average: Double {
//            return Double((marks.reduce(0,+))) / Double(marks.count)
//        }
//        }
//        let studentDataset = [
//        Student(name: "John", marks: [85, 90, 80]),
//        Student(name: "Alice", marks: [75, 80, 85]),
//        Student(name: "Michael", marks: [90, 95, 92])
//        ]
//        return Dictionary(uniqueKeysWithValues: studentDataset.map { $0.name, $0.average })
//
//        // Example usage
//        for (name,average) in studentDictionary {
//        print("Name: \(name), Average Marks: \(average)")
//        }
    
//    d) Use the filter function to get the list of students whose attendance is greater than 90%
//    and store it in the variable highAttendanceStudents
    //Asnwer
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
//    let highAttendanceStudents = students.filter{$0.attendance >= 0.90}
//    print(highAttendanceStudents)
//}

