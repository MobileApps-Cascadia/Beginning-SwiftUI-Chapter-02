
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


func addTwoNumbers( num1: Int, num2 y: Int) -> Int {
    let sum = num1 + y
    print("HellO!")
    return sum
    // return num1 + num2
}

//func addTwoNumbers( _ x: Int, _ y: Int) -> Int {
//    let sum = x + y
//    print("HellO!")
//    return sum
//    // return num1 + num2
//}

print("result is: " + String(addTwoNumbers(num1: 3, num2: 4)))

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
someFunctionThatTakesAClosure(theClosure:
                                {   ( s: String ) -> String in
                                    s + " (Unnamed closure expression)"
                                }
                             )

print("\n=======  Passing a TRAILING closure expression to a function / method:")
someFunctionThatTakesAClosure( )
                                {   ( s: String ) -> String in
                                    s + " (Unnamed TRAILING closure expression)"
                                }

import PlaygroundSupport
import SwiftUI

// More info at https://www.avanderlee.com/swift/available-deprecated-renamed/
if #available(iOS 15, *) {
    
    struct TypicalSwiftUIView: View {
        public var body: some View {
            Text("Hello World2!")
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
    
//    PlaygroundPage.current.setLiveView(SwiftUIViewWithCode())

}
