# Optionals lab

Fork and clone this repo. On your fork, answer and commit the follow questions. When you are finished, submit the link to your repo on Canvas.


## Question 1

`var userName: String?`

```swift
Write 3 different ways of safely unwrapping and printing the value of `userName`.  If it is nil, print "No name".

- Method one: Check for nil and force unwrap
//Check for nil:

var userName: String?
    
    if userName != nil {
        print(userName!)
    } else {
        print("no name")
    }
        
//force unwrap

var userName: String? = "eric w"
    if userName != nil {
        print(userName!)
    } else {
        print("no name")
    }

- Method two: Optional binding
var userName: String? = "eRiC W"

    if let unwrappedUserName = userName {
        print(unwrappedUserName)
    } else {
        print("no name")
    }

- Method three: Nil coalescing
    var userName: String?
    var unwrappedUserName = userName ?? "no name"
    print(unwrappedUserName)
```

## Question 2

Given optional string `backgroundColor`, write code that safely unwraps and prints it. If backgroundColor is nil, give it a value.

```swift
var backgroundColor : String?
if let unwrappedBackgroundColor = backgroundColor {
        print(unwrappedBackgroundColor)
    }  else {
    print("no back ground color")
    }
```

## Question 3

Given an optional width and an optional height of a rectangle, write code that calculates and prints the area. Print an error message if either value is nil.

```swift
var width: Double? = 7.0
var height: Double?
    
    if width == nil || height == nil {
        print("Error: area can not be calculated")
    } else {
        let widthInt = Int(width!.rounded())
        let heightInt = Int(height!.rounded())
        let area : Int = widthInt * heightInt
        print(area)
    }
```

## Question 4

Given the following optional variables `name`, `age` and `height`. Write code so that it prints `name`, `age` and `height` if they all have a value. If any are nil, print an error message. Try using optional binding.

`var name: String?
var age: Int?
var height: Double?`
```swift

var name: String? = "Eric" //entered a value
var age: Int?   //entered no value, to test result with 'nil'
var height: Double? = 6.0 //entered value

    if let unwrappedName = name, let unwrappedAge = age, let unwrappedHeight = height {
        print("Name: \(unwrappedName), Age: \(unwrappedAge), Height: \( unwrappedHeight)")
    } else {
        print("Error: missing value in one of the variables")
    }
```

## Question 5

Given the variables `firstName`, `middleName` and `lastName`. Create a variable called `fullName` that is a nicely formatted string.

`var firstName: String = "Johnny"
var middleName: String?
var lastName: String = "Stone"
`
```swift

var firstName: String = "Johnny"
var middleName: String? = "Moon" //add value
var lastName: String = "Stone"

let fullName = String(firstName) + " " + String(middleName!) + " " + String(lastName)
print(fullName)
```
## Question 6

Write code that adds 15 to `myIntString`, then prints the sum. Use the `Int()` constructor which returns an optional Int `(Int?)`.
```swift
    let myIntString = "35"
    let unwrappedMyIntStr: Int? = Int(myIntString)
    let sumIntString = (unwrappedMyIntStr!) + 15
    print("15 + \(unwrappedMyIntStr!) = \(sumIntString)")
```

## Question 7

Given an optional tuple of optional Ints, write code to safely unwrap the tuple and calculate the sum of its contents that aren't nil.

```swift
var testCaseOne: (Int?, Int?, Int?)? = (4, nil, 7)
var testCaseTwo: (Int?, Int?, Int?)? = (nil, nil, 9)
var testCaseThree: (Int?, Int?, Int?)? = (5, 10, 24)
var sumTestCase1: Int = 0
    if let test = testCaseOne {
        if let test0 = test.0 {
            sumTestCase1 += test0
        }
        if let test1 = test.1 {
            sumTestCase1 += test1
        }
        if let test2 = test.2 {
            sumTestCase1 += test2
        }
    }
    print("The sum of testCaseOne is \(sumTestCase1)")

var sumTestCase2: Int = 0
    if let test = testCaseTwo {
        if let test0 = test.0 {
            sumTestCase2 += test0
        }
        if let test1 = test.1 {
            sumTestCase2 += test1
        }
        if let test2 = test.2 {
            sumTestCase2 += test2
        }
    }
    print("The sum of testCaseTwo is \(sumTestCase2)")

var sumTestCase3: Int = 0
    if let test = testCaseThree {
        if let test0 = test.0 {
            sumTestCase3 += test0
        }
        if let test1 = test.1 {
            sumTestCase3 += test1
        }
        if let test2 = test.2 {
            sumTestCase3 += test2
        }
    }
    print("The sum of testCaseThree is \(sumTestCase3)")
```
## Question 8

Safely unwrap `tuple` if there’s a non-nil tuple value and print it out.

```swift

var tuple: (Int, Int)?
if Bool.random() {
 tuple = (5, 3)
}
```
```swift
    var tuple: (Int, Int)?
        if Bool.random() {
        tuple = (5, 3)
        }

        if let unwrappedTuple = tuple {
            print(unwrappedTuple)
        } else {
        print("Error: value is nil!")
        }
```

## Question 9

Write code that either doubles `myInt` and then prints it, or prints an error message if myInt is nil.

```swift
var myInt: Int?
if Bool.random() {
 myInt = 5
}
```
```swift
var myInt: Int?
if Bool.random() {
    myInt = 5
    }
    if let myNewInt = myInt {
    print(myNewInt * 2)
    } else {
    print("Error: myInt has nil value")
}
```
## Question 10

Write code that prints out the product of `myDouble` and `doubleTwo` or prints an error message if `myDouble` is nil.

```swift
    var myDouble: Double?
    let doubleTwo: Double = 5

    if Bool.random() {
        myDouble = 12
    }

    if let unwrappedMyDouble = myDouble {
        print(unwrappedMyDouble * doubleTwo)
        } else {
        print("myDouble is nil")
    }
```

## Question 11

Determine if the variable contains a Boolean or nil value. If nil set the variable to false, else keep it true.

```swift
var isTheGreatest: Bool?
    if Bool.random() {
        isTheGreatest = true
    }
    if let i = isTheGreatest {
        print(i)
    } else {
    print(false)
    }
```
## Question 12

Given the code below print the sum of each non-nil element in `myTuple`.

 ```swift
var myTuple: (Int?, Int?, Int?, Int?)
if Bool.random() {
    myTuple.0 = 5
    myTuple.2 = 14
    } else {
    myTuple.1 = 9
    myTuple.3 = 10
    }
 
var mySum = 0
if let t0 = myTuple.0{
    mySum += t0
}
if let t1 = myTuple.1{
    mySum += t1
}
if let t2 = myTuple.2{
    mySum += t2
}
if let t3 = myTuple.3{
    mySum += t3
}
print(mySum)
```


## Question 13

Given the helper functions and code below, check to see if your `evolutionaryStone` is able to evolve your pokemon.  The table below shows the appropriate matches of pokemon to stone:

| Pokemon	   | Stone    |
| :--------: | :------: |
| Pikachu	   | Electric |
| Bulbasaur	 | Grass    |
| Charmander | Fire     |
| Squirtle	 | Water    |


```swift
// Helper Functions

func eStone() -> String {
 let random = Int(arc4random_uniform(5))
 switch random {
 case 0:
  return "Electric"
 case 1:
  return "Grass"
 case 2:
  return "Fire"
 case 3:
  return "Water"
 default:
  return "No Stone"
 }
}

func starterPokemon() -> String {
 let random = Int(arc4random_uniform(5))
 switch random {
 case 0:
  return "Pikachu"
 case 1:
  return "Bulbasaur"
 case 2:
  return "Charmander"
 case 3:
  return "Squirtle"
 default:
  return "Not a Pokemon"
 }
}

let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
```


## Question 14

Given an optional int `numberOfPeople`, write code that unwraps and prints it **only if it is even**. Try using optional binding with a condition.

```swift

var numberOfPeople: Int?
if Bool.random() {
numberOfPeople = 108
    if let myEvenNum = numberOfPeople {
        if myEvenNum % 2 == 0 {
            print("This \(myEvenNum) is an even number")
            } else {
            print("Error")
        }
    }
}

```
## Question 15

Given the array of optional Ints `someNumbers`, write code to find the product of the array not including any nil values.

```swift

var someNumbers: [Int?] = []
for i in 0..<20 {
    someNumbers.append(Bool.random() ? i : nil)
    }

    var x = 1
        for myNum in someNumbers {
            if let myNum = myNum {
                x = x * myNum
            }
        }
    print(x)
```


## Question 16

Given the array `poorlyFormattedCityNames`, create a new array with the city names capitalized and any nil values removed.

```swift

let poorlyFormattedCityNames: [String?] = ["new york", "BOSTON", nil, "chicago", nil, "los angeles", nil, "Dallas",]

    var newCityNames: [String] = []
    for city in poorlyFormattedCityNames {
        guard let cityName = city
            else {continue}
            newCityNames.append(cityName.capitalized)
        }
    print(newCityNames)
```
## Question 17

Given a random array of optional numbers, create a new array of all the even numbers that aren't nil.

```swift

var aBunchOfNumbers: [Int?] = []

for _ in 0..<20 {
    aBunchOfNumbers.append(Bool.random() ? Int(arc4random_uniform(102)) : nil)
    }

var myEvenNumbers = [Int]()
    for number in aBunchOfNumbers {
        guard let evenNumbers = number
            else {continue}
            if evenNumbers % 2 == 0 {
                myEvenNumbers.append(evenNumbers)
            }
        }
    print(myEvenNumbers)
```
## Question 18

Given the following array of zip codes as strings, write code that turns them into an array of Ints.

```swift

let zipCodeStrings = ["11377", "11101", "11373", "10014", "10003", "11223"]

var zipCodeInts: [Int] = []
    for i in zipCodeStrings{
        if let num = Int(i){
            zipCodeInts.append(num)
        }
    }
print(zipCodeInts)
```
## Question 19

Some students were asked some questions about their favorite foods and colors and the answers were stored in an array `studentInfo`.

- Print the names of the students that do not have a favorite color.

- Print the names of the students that don't have a favorite color or a favorite food.

- Create a new array of type `[(String, String, String)]` that contains the students with both favorite colors and foods.

`let studentInfo: [(String, String?, String?)] = [("Bill", "Burgers", "Blue"), ("Rita", nil, "Red"), ("Peter", "Pizza", "Purple"), ("Sarah", "Sandwiches", nil), ("Jeff", nil, nil), ("Lucy", "Leftovers", "Lilac"), ("Mike", "Meat", "Mauve"), ("Gemma", nil, "Green")]`


## Question 20

Given an optional array of optional tuples of optional UInt8s,

- Write code to safely unwrap and print the tuples in the array with all 3 RGB values.

- Write code that counts all the nil values.

`let possibleColors: [(r: UInt8?, g: UInt8?, b: UInt8?)?]? = [(128, 21, 7), (0, 0, 0), nil, (nil, 25, 82), (255, 255, 255), nil, (200, 100, nil), (120, nil, 23), (0, 255, 106), (nil, nil, nil), nil, (100, 100, 200)]`


## Question 21

Consider the following nested optional. It corresponds to a number inside a box inside a box inside a box.

- Fully force unwrap and print number.

- Optionally bind and print number.

`let number: Int??? = 10`
```swift

let number: Int??? = 10
    if let number0 = number {
        if let number1 = number0 {
            if let number2 = number1{
                print(number2)
            }
        }
    }
```
## Question 22

Given an Array of Optional Strings, write code that concatenates all non-nil values together except for strings with 3 or more vowels.

`let monkeyingAround = ["orangutan", "apes",nil, "monkeys", "gorillas", "lemurs", nil]`

output: `"apesmonkeyslemurs"`


## Question 23

Given the value below, print out all of the non-nil Ints it contains by accessing each of them.

`var strangeStructure: ([Int]?, [[Int?]], [[Int]?], Int)? = ([1], [[2,3,4],[],[5,nil],[nil]], [nil, [6,7,8],nil,[],[9]], 10)`


# 6.3 Optionals Lab
## Question 3

a. Given the variables userOneName, userOneAge, and userOneHeight below, write code that prints "Hello Anne! You are 15 years old and 5.8 feet tall" (1 foot = 12 inches). Use optional binding.

`var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70`

```swift
if let userName = userOneName, let userAge = userOneAge, let userHeight = userOneHeight {
    let formattedStrInches = String(format: "%.1f", userHeight / 12)
        print(" Hello \(userName)! \n You're \(userAge) and \(formattedStrInches) feet tall")
    } else {
        print("error found nil")
    }
}

```
## Question 4
Give the variable favoriteNumber, write code that either prints "Your favorite number is " followed by the number, or 
"I don't know what your favorite number is"

favoriteNumber is of type Int? and will either be nil or a random number between 0 and 10. It will change each time you run your Playground.

`var favoriteNumber = Bool.random() ? Int.random(in: 0...10) : nil`
```swift
    if favoriteNumber != nil {
        print("Your fave number is: \(String(describing: favoriteNumber!))")
    } else {
        print("I don't know your favorite number")
    }
```
## Question 5
Given the variables numOne, numTwo and numThree, write code that prints "The sum of all the numbers is " followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil, the sum is zero.

`var numOne = Bool.random() ? Int.random(in: 0...10) : nil
var numTwo = Bool.random() ? Int.random(in: 0...10) : nil
var numThree = Bool.random() ? Int.random(in: 0...10) : nil`

```swift
    var numArr = [numOne, numTwo, numThree]
    var numSum = 0

    for num in numArr {
        if let numInt = num {
            numSum = numInt + numSum
        }
    }

    print("The sum of all the numbers is: \(numSum)")
```
## Question 6
Given the variable numbers below, write code that prints "The sum of all the numbers is " followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil, the sum is zero.

```swift
var numbers = [Int?]()
var sum = 0
for _ in 0..<2 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)``
    
    for num in numbers {
        if let numInt = num {
//            print(numInt)
            sum += numInt
        }
    }
//    print(numbers)
}
print(" The sum of all the numbers is: \(sum)\n")
```
