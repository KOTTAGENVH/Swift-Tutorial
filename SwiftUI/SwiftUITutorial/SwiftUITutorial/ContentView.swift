//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Nowen on 2024-05-29.
//

import SwiftUI

enum Gender: String, CaseIterable {
    case male = "Male"
    case female = "Female"
}

//func registerAction(selectedGender:String, date:Date, name:String, mobile:String,email:String,weight:Double){
//    
//}

struct ContentView: View {
    @State private var name: String = "Nihal"
    @State private var date: Date = {
        let calendar = Calendar.current
        return calendar.date(from: DateComponents(year: 1992, month: 5, day: 20)) ?? Date()
    }()
    @State private var selectedGender: String = ""
    @State private var ranges: [Gender] = [.male, .female]
    @State private var mobilenumber: String = "0778934238"
    @State private var email: String = "Nihal.silva@gmail.com"
    @State private var speed: Double = 50
    @State private var isEditing = false
    
    func registerAction(){
        print("Registration Details:")
        print("Name: \(name)")
        print("Date of Birth: \(date)")
        print("Gender: \(selectedGender)")
        print("Mobile Number: \(mobilenumber)")
        print("Email Address: \(email)")
        print("Weight: \(speed)")
    }
    
    var body: some View {
        ZStack {
            VStack {
                Text("Student Registration")
                    .font(.title)
                    .padding(.bottom, 20)
                HStack {
                    Text("Name")
                        .padding(.trailing, 10)
                    TextField(
                        "Nihal",
                        text: $name
                    )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
                }
                .padding()
                HStack {
                    DatePicker(
                        "Date of Birth",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
                }
                .padding()
                HStack {
                    Text("Gender")
                        .padding(.trailing, 10)
                    Picker("Gender", selection: $selectedGender) {
                        ForEach(Gender.allCases, id: \.self) { gender in
                            Text(gender.rawValue).tag(gender.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 10)
                    .background(selectedGender == Gender.male.rawValue ? Color.gray.opacity(0.2) : Color.gray.opacity(0.2))
                    .cornerRadius(8)
                }
                .padding()
                HStack {
                    Text("Mobile Number")
                        .padding(.trailing, 10)
                    TextField(
                    "0778934238",
                    text: $mobilenumber
                    )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
                }
                .padding()
                HStack {
                    Text("Email")
                        .padding(.trailing, 10)
                    TextField(
                    "Nihal.silva@gmail.com",
                    text: $email
                    )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
                }

                .padding()
                HStack{
                    Slider(
                    value: $speed,
                    in: 0...100,
                    onEditingChanged: { editing in
                    isEditing = editing
                    })
                    Text("\(Int(speed)) kg")
                        .padding(.trailing, 10)
                }
                .padding()
//                Spacer()
                Button(action: registerAction) {
                Text("Register")
                }
                .foregroundColor(.blue)
            }
        }
        .padding()
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
