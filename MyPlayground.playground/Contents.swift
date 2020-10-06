import UIKit
//'check for nil and force unwrapped:
//var userName: String?
//if userName != nil {
//    print(userName!)
//} else {
//print("no name")
//}

//var userName: String?
//if userName != nil {
//    print(userName!)
//} else {
//    print("no name")
//}

//var userName: String? = "eRiC W"
//
//if let unwrappedUserName = userName {
//    print(unwrappedUserName)
//} else {
//    print("no name")
//}
//var userName: String?
//var unwrappedUserName = userName ?? "no name"
//print(unwrappedUserName)
//var backgroundColor : String?
//if let unwrappedBackgroundColor = backgroundColor {
//    print(unwrappedBackgroundColor)
//} else {
//    print("no back ground color")
//}

//var width: Double? = 7.0
//var height: Double?
//if width == nil || height == nil {
//    print("Error: area can not be calculated")
//    } else {
//    let widthInt = Int(width!.rounded())
//    let heightInt = Int(height!.rounded())
//    let area : Int = widthInt * heightInt
//        print(area)
//}
//var name: String? = "Eric"
//var age: Int?
//var height: Double? = 6.0
//if let unwrappedName = name, let unwrappedAge = age, let unwrappedHeight = height {
//    print("Name: \(unwrappedName), Age: \(unwrappedAge), Height: \( unwrappedHeight)")
//    } else {
//    print("Error: missing value in one of the variables")
//}
//var firstName: String = "Johnny"
//var middleName: String? = "Moon"
//var lastName: String = "Stone"
//let unwrappedMiddleName = middleName
//let fullName = String(firstName) + " " + String(middleName!) + " " + String(lastName)
//print(fullName)

//let myIntString = "35"
//let unwrappedMyIntStr: Int? = Int(myIntString)
//
//let sumIntString = (unwrappedMyIntStr!) + 15
//print("15 + \(unwrappedMyIntStr!) = \(sumIntString)")

// No. 7
//var testCaseOne: (Int?, Int?, Int?)? = (4, nil, 7)
//var testCaseTwo: (Int?, Int?, Int?)? = (nil, nil, 9)
//var testCaseThree: (Int?, Int?, Int?)? = (5, 10, 24)
//var sumTestCase1: Int = 0
//if let test = testCaseOne {
//    if let test0 = test.0 {
//    sumTestCase1 += test0
//    }
//    if let test1 = test.1 {
//    sumTestCase1 += test1
//    }
//    if let test2 = test.2 {
//    sumTestCase1 += test2
//    }
//}
//print("The sum of testCaseOne is \(sumTestCase1)")
//
//var sumTestCase2: Int = 0
//if let test = testCaseTwo {
//    if let test0 = test.0 {
//        sumTestCase2 += test0
//    }
//    if let test1 = test.1 {
//        sumTestCase2 += test1
//    }
//    if let test2 = test.2 {
//        sumTestCase2 += test2
//    }
//}
//print("The sum of testCaseTwo is \(sumTestCase2)")
//
//var sumTestCase3: Int = 0
//if let test = testCaseThree {
//    if let test0 = test.0 {
//        sumTestCase3 += test0
//    }
//    if let test1 = test.1 {
//        sumTestCase3 += test1
//    }
//    if let test2 = test.2 {
//        sumTestCase3 += test2
//    }
//}
//print("The sum of testCaseThree is \(sumTestCase3)")
//
//var tuple: (Int, Int)?
//if Bool.random() {
//    tuple = (5, 3)
//}
//
//if let unwrappedTuple = tuple {
//    print(unwrappedTuple)
//} else {
//    print("Error: value is nil!")
//}

//var tuple: (Int, Int)?
//
//if Bool.random() {
//    tuple = (5, 3)
//    if let tuple = tuple {
//        print(tuple.0)
//        print(tuple.1)
//    }
//}
//
////Write code that either doubles `myInt` and then prints it, or prints an error message if myInt is nil.

//var myInt: Int?
//if Bool.random() {
//    myInt = 5
//}
//
//    if let myNewInt = myInt {
//    print(myNewInt * 2)
//    } else {
//        print("Error: myInt has nil value")
//    }
//Write code that prints out the product of `myDouble` and `doubleTwo` or prints an error message if `myDouble` is nil.

//var myDouble: Double?
//let doubleTwo: Double = 5
//if Bool.random() {
//    myDouble = 15
//}
//if let unwrappedMyDouble = myDouble {
//    print(unwrappedMyDouble * doubleTwo)
//} else {
//    print("myDouble is nil")
//}
//## Question 11
//Determine if the variable contains a Boolean or nil value. If nil set the variable to false, else keep it true
//var isTheGreatest: Bool?
//if Bool.random() {
//    isTheGreatest = true
//}
//    if let i = isTheGreatest {
//        print(i)
//    } else {
//        print(false)
//}
//var myTuple: (Int?, Int?, Int?, Int?)
//if Bool.random() {
//    myTuple.0 = 5
//    myTuple.2 = 14
//} else {
//    myTuple.1 = 9
//    myTuple.3 = 10
//}
//var mySum = 0
//if let t0 = myTuple.0{
//    mySum += t0
//}
//if let t1 = myTuple.1{
//    mySum += t1
//}
//if let t2 = myTuple.2{
//    mySum += t2
//}
//if let t3 = myTuple.3{
//    mySum += t3
//}
//print(mySum)

//NO. 13
// Helper Functions

//func eStone() -> String {
//    let random = Int(arc4random_uniform(5))
//    switch random {
//    case 0:
//        return "Electric"
//    case 1:
//        return "Grass"
//    case 2:
//        return "Fire"
//    case 3:
//        return "Water"
//    default:
//        return "No Stone"
//    }
//}
//
//func starterPokemon() -> String {
//    let random = Int(arc4random_uniform(5))
//    switch random {
//    case 0:
//        return "Pikachu"
//    case 1:
//        return "Bulbasaur"
//    case 2:
//        return "Charmander"
//    case 3:
//        return "Squirtle"
//    default:
//        return "Not a Pokemon"
//    }
//}
//
//let pokemon: String?
//var evolutionaryStone: String?
//pokemon = starterPokemon()
//evolutionaryStone = eStone()
//
////Solution
//func evolution(pocketMonster: String?, stone: String? )->(){
//    if let name = pocketMonster, let s = stone{
//        switch name {
//        case "Pikachu":
//            if s == "Electric"{
//                print("\(name) evolves into Raichu" )
//            }else{
//                print("\(name) didn't evolve" )
//            }
//        case "Bulbasaur":
//            if s == "Grass"{
//                print("\(name) evolves into Ivysaur?")
//                print("FYI: \(name) doesn't evolve with any stone")
//            }else{
//                print("\(name) didn't evolve")
//            }
//        case "Charmander":
//            if s == "Fire"{
//                print("\(name) evolves into Charmeleon?")
//                print("FYI: \(name) doesn't evolve with any stone")
//            }else{
//                print("\(name) didn't evolve")
//            }
//        case "Squirtle":
//            if s == "Water"{
//                print("\(name) evolves into Warturtle?")
//                print("FYI: \(name) doesn't evolve with any stone")
//            }else{
//                print("\(name) didn't evolve")
//            }
//
//        default:
//            print("No such pokemon and/or stone exists")
//        }
//    }
//}
//
//evolution(pocketMonster: pokemon, stone: evolutionaryStone)

//## Question 14
//
//Given an optional int `numberOfPeople`, write code that unwraps and prints it **only if it is even**. Try using optional binding with a condition.
//var numberOfPeople: Int?
//if Bool.random() {
//    numberOfPeople = 108
//    if let myEvenNum = numberOfPeople {
//        if myEvenNum % 2 == 0 {
//            print("This \(myEvenNum) is an even number")
//        } else {
//            print("Error")
//        }
//    }
//}
//var someNumbers: [Int?] = []
//
//var myNumber = 0
//
//for i in 0..<20 {
//    someNumbers.append(Bool.random() ? i : nil)
//}
//for i in someNumbers where i != nil {
//    myNumber *= i!
//}
//print(myNumber)
//var someNumbers: [Int?] = []
//var myNumber = 0
//
//for i in 0..<20 {
//    someNumbers.append(Bool.random() ? i : nil)
//}
//for i in someNumbers where i != nil {
//    myNumber *= i!
//}
//print(myNumber)
//var someNumbers: [Int?] = []
//
//for i in 0..<20 {
//    someNumbers.append(Bool.random() ? i : nil)
//}
//
//var x = 1
//for myNum in someNumbers {
//    if let myNum = myNum {
//        x = x * myNum
//    }
//}
//
//print(x)

//let poorlyFormattedCityNames: [String?] = ["new york", "BOSTON", nil, "chicago", nil, "los angeles", nil, "Dallas",]
//
//var newCityNames: [String] = []
//
//for city in poorlyFormattedCityNames {
//    guard let cityName = city
//        else {continue}
//        newCityNames.append(cityName.capitalized)
//}
//print(newCityNames)
//var aBunchOfNumbers: [Int?] = []
//
//for _ in 0..<20 {
//    aBunchOfNumbers.append(Bool.random() ? Int(arc4random_uniform(102)) : nil)
//}
//var myEvenNumbers = [Int]()
//for number in aBunchOfNumbers {
//    guard let evenNumbers = number
//        else {continue}
//    if evenNumbers % 2 == 0 {
//        myEvenNumbers.append(evenNumbers)
//    }
//}
//print(myEvenNumbers)
//let zipCodeStrings = ["11377", "11101", "11373", "10014", "10003", "11223"]
//
//var zipCodeInts: [Int] = []
//for i in zipCodeStrings{
//    if let num = Int(i){
//        zipCodeInts.append(num)
//    }
//}
//print(zipCodeInts)
//let number: Int??? = 10
//if let number0 = number {
//    if let number1 = number0 {
//        if let number2 = number1{
//            print(number2)
//        }
//    }
//}
//let possibleColors: [(r: UInt8?, g: UInt8?, b: UInt8?)?]? = [(128, 21, 7), (0, 0, 0), nil, (nil, 25, 82), (255, 255, 255), nil, (200, 100, nil), (120, nil, 23), (0, 255, 106), (nil, nil, nil), nil, (100, 100, 200)]
//var newArr: [(r: UInt8, g: UInt8, b: UInt8)] = []
//for color in possibleColors! where color?.0 != nil && color?.1 != nil &&    color?.2 != nil {
//    newArr.append(color as! (r: UInt8, g: UInt8, b: UInt8))
//}
//print(newArr)

//Question from 6.3 #3
//Given the variables userOneName, userOneAge, and userOneHeight below, write code that prints "Hello Anne! You are 15 years old and 5.8 feet tall" (1 foot = 12 inches). Use optional binding.

var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70

if let userName = userOneName, let userAge = userOneAge, let userHeight = userOneHeight {
    let formattedStrInches = String(format: "%.1f", userHeight / 12)
    print(" Hello \(userName)! \n You're \(userAge) and \(formattedStrInches) feet tall")
} else {
    print("error found nil")
}
 
















