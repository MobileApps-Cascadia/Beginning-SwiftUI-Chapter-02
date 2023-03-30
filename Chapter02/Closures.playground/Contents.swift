let addNumbers = { (num1: Int, num2: Int) -> Int in
    let sum = num1 + num2
    print("\(num1) + \(num2) = \(sum)")
    return sum
}

func performOperation(num1: Int, num2: Int, operation: (Int, Int) -> Int) {
    print("Performing operation...")
    let result = operation(num1, num2)
    print("The result is: \(result)")
}

// calling performOperation with normal parameter syntax
performOperation(num1: 3, num2: 4, operation: addNumbers)

// calling performOperation with trailing closure syntax
performOperation(num1: 3, num2: 4) { (num1, num2) -> Int in
    let product = num1 * num2
    print("\(num1) * \(num2) = \(product)")
    return product
}

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
