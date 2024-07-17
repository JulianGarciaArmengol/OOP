import Foundation

public class Animal {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func getColor() -> String {
        return color
    }
    
    func setColor(_ color: String) {
        self.color = color
    }
    
    public func eat() {
        print("El animal esta comiendo")
    }
}

public class Dog: Animal {
    var owner: String
    
    public init(color: String, owner: String) {
        self.owner = owner
        
        super.init(color: color)
    }
    
    func getOwner() -> String {
        return owner
    }
    
    func setOwner(_ owner: String) {
        self.owner = owner
    }
    
    func bark() {
        print("bark bark")
    }
}

public class Lion: Animal {
    var jungleName: String
    
    public init(color: String, jungleName: String) {
        self.jungleName = jungleName
        super.init(color: color)
    }
    
    func getJungle() -> String {
        return jungleName
    }
    
    func setJungle(_ name: String) {
        jungleName = name
    }
    
    func roar() {
        print("ROAR")
    }
    
    public override func eat() {
        print("El leon esta comiendo")
    }
}
