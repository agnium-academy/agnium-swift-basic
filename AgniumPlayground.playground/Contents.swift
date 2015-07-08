//: Playground - noun: a place where people can play
//: This playground - a place where people can play the basic

import UIKit

//define a variable, the value can be changed in the future
var str = "Hello, playground"

//define constants, the value can not be changed
let apples = 3
let oranges = 5

//define a constant with explicit type
let weightOfApple: Float = 3.4

//define an optional variable, can be nil
var myFruit : String? = "apple"
myFruit = nil

//input any values in string
let appleSummary = "I have \(apples) apples"
let totalFruitsSummary = "I have \(oranges + apples) fruits"

//define a array of string
var fruits = ["apple","orange","melon"]

//get the value from particular index of an array
var defaultFruit = fruits[0]

//define an empty array
let emptyArray = [String]()

//define an empty dictionary
let emptyDict = [String: Float]()

var myFavFruits = 0
var myBrothersFavFruits = 0

//for-in loop
for fruit in fruits {
    //if conditions without parentheses, they are optional
    if fruit == "apple" {
        myFavFruits += 1
        myBrothersFavFruits += 1
    }else{
        myBrothersFavFruits += 1
    }
}

//define a function, which has 2 params, and return a string value
func eatFruit(name: String, total: Int) -> String {
    return "I eat \(total) \(name)s and I'm full now"
}

//call the function and give the params
eatFruit(fruits[0], 4)

//create a class
class Fruit {
    var name = ""
    var color = ""
    
    //constructor with a single param
    init(name: String){
        self.name = name
    }
    
    //a function which returns the string value
    func getName() -> String{
        return self.name
    }
}

//initialize Fruit object
let f = Fruit(name: "apple")

//set the color to red
f.color = "red"

//define a protocol, or interface in Java
protocol SimpleProtocol {
    //it can contain variable
    var simpleHello: String {
        get
    }
    //and a function
    mutating func adjust()
}

//define a class which inherit the protocol
class SimpleClass: SimpleProtocol {
    //this var has to be overridden
    var simpleHello: String = "A very simple hello"
    //this is not
    var a = 2
    
    //this func has to be overridden
    func adjust() {
        simpleHello += "get adjusted."
    }
}

//constant of an instance
let s = SimpleClass()
s.adjust()

//command to print, like console in Obj-C
println(f.color)

let combinedStr = "first" + "last"


