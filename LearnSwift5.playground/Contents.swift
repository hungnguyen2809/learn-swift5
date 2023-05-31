import UIKit
import Foundation

//print("Nguyen Van Hung");

/*
var age: Int = 24; // this is a variable
let PI = 3.14156; // let is const
//PI = 5; // can't assign value to constant

var a = 1, b = 2, c = 3;
print("a: \(a), b: \(b), c: \(c)");

print("Integer has min = \(Int.min), max = \(Int.max)")

var x: Float = 10;
let y = pow(x, 2); //3^2 = 9
//dump(y); // dump print detail value
print(y);

let cardNumber = 135_623_571_156_223_644; //a very big number, có thể viết phân cách nhau bằng _ => vẫn hiểu là số
print(cardNumber);

let hasCar = false
print(hasCar)
if (!hasCar) {
    print("yes, I have a car")
} else {
    print("No, I have not any car")
}
 
*/

/*

//define 2 variables => a tuple
let (x, y, z) = (2, 4, 6);
//print("x = \(x), y = \(y)");
//string concatenation
print("x = " + String(x) + ", y = " + String(y));

var a = 4;
print(a * 2 + 1);
a += 2;
print(a);

let name:String = "Hung";
let age:Int = 18;
let description = "Name is \(name), age is \(age)";

let someComments = """
    Good, I like it \u{2665},
    Ok, let me check \u{272a}
    Please do it yourself
"""; // \u is unicode
print(someComments);

var names:[String] = ["John", "Jack", "Tim", "Elon", "Nick"];
print("Number of elements: \(names.count)");
print(names[0]);

//iterate an array
for i in 0..<names.count {
    print("\(i) - \(names[i])");
}
for i in 0...3 {
    print("\(i) - \(names[i])");
}

let someOtherFriends = ["Anna", "Taylor"];
names += someOtherFriends; // concat two array
names.insert("Hung", at: names.count); // add element into array
print(names);

print("iterate with index");
for name in names {
    print("name: \(name)");
}
for (index, name) in names.enumerated() {
    print("index: \(index), name: \(name)");
}

//how to find "Anna" ?
var filteredNames = names.filter { name in return name.lowercased() == "anna"; }
dump(filteredNames)

//find names with length > 3
filteredNames = names.filter{ name in
    return name.count > 4
}
print(filteredNames);

//delete is also "filter"
//now delete element with name = "Taylor"
print("Before delete")
print(names)
names = names.filter {name in
    return name.lowercased() != "taylor"
}
print("After delete")
print(names)
//Add 2 items with the same values
names.insert("Hung", at: 0)
names.insert("Hung", at: 0)
print(names)

// Set
var fruits:Set<String> = ["Orange", "Lemon", "Pineapple", "Apple", "Kiwi"]
print(fruits)
fruits.insert("Apple")//your cannot add the same value to a "set"
print(fruits)

for (i, fruit) in fruits.enumerated() {
    print("i = \(i), fruit: \(fruit)")
}

let setA:Set<Int> = [1, 3, 4, 5, 6, 9];
let setB:Set<Int> = [15, 23, 4, 5, 88, 77];
print("intersection: \(setA.intersection(setB))");
print("differences: \(setA.symmetricDifference(setB))");
print("union: \(setA.union(setB))");
print("count: \(setA.union(setB).count)");

*/

//Object
/*
//an object as key - value = Dictionary
var user: [String: Any] = [
    "name": "Hung",
    "age": 18,
    "email": "hungnguyen@gmail.com"
]
dump(user)

if(!user.isEmpty) {
    print("The object is not empty")
}
user["address"] = "Bach Mai street, Hanoi, Vietnam"
user["email"] = nil //remove a key(property)
dump(user)
//update a key
//user["age"] = 20

if let oldAge = user.updateValue(20, forKey: "age") {
    print("The old value of age is: \(oldAge)")
}
//dump(user)

for (key, value) in user {
    print("key = \(key), value = \(value)")
}
print(user.keys)
print(user.values)
*/

var i = 0
while(i < 10){
    i = i + 1
//    if(i == 4) {
//        break
//    }
    if i % 2 == 0 {
        continue
    }
    print(i)
}

//repeat - while, another way, such as do while
i = 0
repeat {
    print("i = \(i)")
    i = i + 1
} while(i < 5)

let marks:Float = 9.0;
switch (marks) {
    case 0:
        print("very bad, you do nothing")
    case 0..<4:
        print("Quite bad")
    case 4..<5:
        print("You must work harder to pass this Exam")
    case 5..<7:
        print("Normal")
    case 7..<9:
        print("Good")
    case 9...10:
        print("Excellent")
    default:
        print("Not a valid mark")
}

let point = (4, 5) //this is a tuple
switch (point) {
    case let (x, y) where x < 0 && y < 0:
        print("x < 0 and y < 0")
    case let (x, y) where x > 0 && y > 0:
        print("x > 0 and y > 0")
        //fallthrough
    case let (x, y) where x == 0 && y == 0:
        print("x = 0 and y = 0")
    //let's write other cases
    default:
        print("I donot know")
}
