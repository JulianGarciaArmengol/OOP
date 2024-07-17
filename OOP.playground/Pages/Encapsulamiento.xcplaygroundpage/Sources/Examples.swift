import Foundation

// fileprivate
fileprivate class SomeFileprivateClass {
    func printsomething() {
        print("Im Fileprivate")
    }
}

public class FileprivateExample {
    public func printsomething() {
        let fp = SomeFileprivateClass()
        fp.printsomething()
    }
    
    public init() {}
}

// Internal
public class InternalExample {
    public func printsomething() {
        let int = SomeInternalClass()
        int.printsomething()
    }
    
    public init() {}
}
