/*: [Previous](@previous)

 # Herencia
 
 Permite que una clase(subclase) herede atributos y métodos de otra clase(superclase). Reutilizando código y estableciendo una relacion jerárquica entre clases.
 
 ![imagen herencia](herencia2.png width="700" height="410")
 
 ---
 */
//: ### Ejemplo
//:
//: Superclase
class Animal {
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
    
    func eat() {
        print("El animal esta comiendo")
    }
}

//: Subclases
class Dog: Animal {
    var owner: String
    
    init(color: String, owner: String) {
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

class Lion: Animal {
    var jungleName: String
    
    init(color: String, jungleName: String) {
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
    
    override func eat() {
        print("El leon esta comiendo")
    }
}

let dog = Dog(color: "Cafe", owner: "Juan")
let lion = Lion(color: "Amarillo", jungleName: "Una Jungla")

//: Las subclases *_Dog_* y *_Lion_* heredan atributos y propiedades de su superclase *_Animal_* por lo que los pueden usar:

print("dog:")
print(dog.owner)
dog.bark()
dog.eat()

print()

print("leon:")
print(lion.jungleName)
lion.roar()
lion.getColor()
lion.eat()
//: [Next](@next)
