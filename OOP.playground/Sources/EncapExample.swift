import Foundation

public class SomePublicClass {
    public func printsomething() {
        print("Im Public")
    }
    
    public init() {}
}


open class SomeOpenClass {
    public func printsomething() {
        print("Im Open")
    }
    
    public init() {}
}
