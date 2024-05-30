//
//  ContentView.swift
//  petdetails
//
//  Created by Nowen on 2024-05-30.
//

import SwiftUI

enum Animal: String, CaseIterable{
    case cat = "cat"
    case dog = "dog"
    case bird = "bird"
}
struct ContentView: View {
    
    @State private var animals: [Animal] = []
    @State private var date = Date()
    @State private var tel: String = "2342649264"
    @State private var bodytext: String = "2342649264"
    
    func setcat(){
        animals = [.cat]
    }
    
    func setdog(){
        animals = [.dog]
    }
    
    func setbird(){
        animals = [.bird]
    }
    
    func savePet(){
        print("All det \(animals) \(date) \(tel)")
    }
    
    var body: some View {
        ZStack{
            VStack{
                Text("Pet Details")
                    .font(.title)
                HStack{
                    Text("Pet Name Duma")
                }
                .padding(.trailing, 150)
                HStack{
                    HStack{
                        Text("Pet Type")
                    }
                    HStack{
                        Button(action: setdog) {
                            Text("Dog")
                        }
                        .background(animals.contains(.dog) ? Color.white : Color.clear)
                        Button(action: setcat) {
                            Text("Cat")
                        }
                        .background(animals.contains(.cat) ? Color.white : Color.clear)
                        Button(action: setbird) {
                            Text("Bird")
                        }
                        .background(animals.contains(.bird) ? Color.white : Color.clear)
                    }
                    .background(Color.gray)
                    .foregroundColor(.black)
                }
                HStack{
                    HStack{
                        Text("Date of Birth")
                    }
                    HStack{
                        DatePicker(
                        "",
                        selection: $date,
                        displayedComponents: [.date]
                        )
                    }
                    .background(Color.gray)
                    .foregroundColor(.black)
                }
                HStack{
                    Text("Contact Details")
                    TextField(
                    "contact",
                    text: $tel
                    )
                   
                }
                Button(action: savePet) {
                Text("Save Pet")
                }
                TextField(
                "Body",
                text: $bodytext
                )
                .frame(width: 300, height: 400)
                .background(Color.gray)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




