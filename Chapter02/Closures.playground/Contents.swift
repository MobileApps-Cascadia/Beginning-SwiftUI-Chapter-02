
print("\n=======  Closure: basic function definition")

let myClosure = { (name:String) -> String in
    print(name)
    return "Hello, " + name
}

var returnValue = myClosure("Mike")
print("The returned value is : " + returnValue)

//Or, just print the return value directly,
// without storing it into a variable:
print( myClosure("Sarah"))


print("\n=======  Single-expression closures return that value:")
let greetingClosure = { (name:String) -> String in
    "Hello, " + name
}

print(greetingClosure("Mary"))


print("\n=======  Passing Closure to a function / method:")

func someFunctionThatTakesAClosure(theClosure: (String) -> String) {
    // function body goes here
    print("About to call the closure method")
    let result1 = theClosure("Bob")
    print("Got back " + result1)
    
    print("About to call it again" )
    print(theClosure("Mary"))
}

someFunctionThatTakesAClosure(theClosure: myClosure)

print("\n=======  Passing an unnamed closure expression to a function / method:")
someFunctionThatTakesAClosure(theClosure: {(s:String)->String in s + " (Unnamed closure expression)"} )

print("\n=======  Passing a TRAILING closure expression to a function / method:")
someFunctionThatTakesAClosure( ) {(s:String)->String in s + " (Trailing closure expression)"}

import PlaygroundSupport
import SwiftUI

// More info at https://www.avanderlee.com/swift/available-deprecated-renamed/
if #available(iOS 15, *) {
    
    struct TypicalSwiftUIView: View {
        public init() {}
        
        public var body: some View {
            Text("Hello World!")
        }
    }
    
    let myView = TypicalSwiftUIView()
    PlaygroundPage.current.setLiveView(myView)
    
    struct SwiftUIViewWithCode: View {
        public init() {}
        
        public var body: some View {
            var textToShow = "Hi there"
            // If we add arbitrary Swift code to execute:
            if 3 < 5 {
                textToShow = textToShow + " That's true!"
            }
            
            // Then we'll need to return a value explicitly:
            return Text(textToShow)
        }
    }
    
    PlaygroundPage.current.setLiveView(SwiftUIViewWithCode())

}

// A. Create a CLOSURE that takes two numbers as parameters, adds them together

let addTwoNumbers = {(num1: Int, num2: Int) -> Int in
    let sum = num1+num2
    print("\(num1) + \(num2) = \(sum)")
    return sum
}

// B. Create a METHOD that accepts the closure from the previous part of this exercise as an argument.

func calculate (operation: (Int, Int ) -> Int) {
    print("performing operation...")
    let result = operation(3, 4)
    print("The result is: \( result)")
}

// Calling the mthedo using normal parameter syntax

calculate(operation: addTwoNumbers)

// C. calling the method using trailing closure syntax

calculate { (num1: Int, num2: Int) -> Int in
    let sum = num1 + num2
    print("\(num1) + \(num2) = \(sum)")
    return sum
}

// Create a new closure right next to the method call

calculate{ (num1: Int, num2: Int) -> Int in
    let product = num1 * num2
    print("\(num1) * \(num2) = \(product)")
    return product
}
