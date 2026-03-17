import UIKit

//1.Constants
let constString: String = "Constant String"
print(constString)
//Can't reassging constants
//constString = "Updated Constant String"
//-------------------

//2.Variables
var varString: String = "Variable String"
varString = "Updated String"
//can not change type after init
//varString = 22
//------------------

//3.Type inferincing
//Int
var myInt = 100
//Boolean
var myBool = true
//String
var myString = "Hello"
//Double
var myDouble = 20.26
//Float
var myFloat = 03.17

//4.Explicit Inference
let anotherString: String = "Another String"
var anotherInt: Int = 26

//5.What all data types we have in swift print those
/*
 String, Char, Integer, Float, Double,Boolean, Int32, Int64
 Array, Set, Collection
 */

//6.Class example of your choice and show inheritance and object creation and function calling
class ParentClass {
    init(name: String){
        print("Parent Class: \(name)")
    }
}

class ChildClass: ParentClass {
    override init(name: String){
        super.init(name: name)
        print("Child Class: \(name)")
    }
}
print("Child object")
let myChildClass = ChildClass(name: "Son")
print("Parent object")
let myParentClass = ParentClass(name: "Father")

//7.Differnt collections- Array, set, dictionary usages
let myArray: [String] = ["One", "Two", "Three", "Three", "Three", "Three", "Four"]
let mySet: Set<String> = ["One", "Two", "Three"]
let myDictionary: [String: Int] = ["One": 1, "Two": 2, "Three": 3]

//8.Differnt Loops (for loop , while loop, repeat while) usage for Array, set, dictionary
print("For loop")
for word in myArray {
    print(word)
}

print("While loop")
var i = 0
while i < myArray.count {
    print(myArray[i])
    i += 1
}
print("repeat")
repeat {
    print(myArray[i])
    i += 1
} while i < myArray.count

print("Dictionary loop:")
for (key, value) in myDictionary {
    print("Key: \(key), Value: \(value)")
}
print("Set loop")
for word in mySet {
    print(word)
}

//9.Struct Usage and example for it
struct MyStructInfo {
var name: String
var age: Int
}
var person = MyStructInfo(name: "john", age: 20)

//10.Create a dictionary mapping product IDs (String) to stock counts (Int). Update stock for a product.
var myProducts: [String: Int] = [
    "product1": 10,
    "product2": 15,
    "product3": 5,
    "product4": 50,
    "product5": 10,
]
myProducts["product5"] = 7

print("In stock: \(myProducts)")

//11. Optionals and optionals unwrapping
var myOptionalString: String? = "Hello" // has a string value of "Hello"
var myOtherOptionalString: String? = nil // has no value defaulted to nil

print("if let:")
if let word = myOptionalString {
    print(word)
} else {
    print("it's nil bro")
}

func myGuardOpsional(myString: String? ) {
    guard let word = myString else {
        print("yo where is the string input??")
        return
    }
    print("this is the string: \(word)")
}

print("with string value:")
myGuardOpsional(myString: myOptionalString)
print("nil:")
myGuardOpsional(myString: myOtherOptionalString)










