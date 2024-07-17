//: [Previous](@previous)
/*:
 # Abstracción
 
 Es el concepto de simplificar procesos complejos al ocultar los detalles de implementacion y mostrar sólo la funcionalidad esencial. Esto hace que el software sea modular y manejable.
 
 En Swift, la abstraccion se logra usando **protocolos**
 
 ---
 ### Ejemplo
 */

//: Protocolo
protocol Character {
    var name: String { get }
    func performAttack()
}

//: Implementaciones Concretas
struct Knight: Character {
    var name: String
    
    func performAttack() {
        print("\(name) is attacking with a sword!")
    }
}

struct Archer: Character {
    var name: String
    
    func performAttack() {
        print("\(name) is attacking with a bow!")
    }
}


//: Caso de uso

let char1 = Knight(name: "Knight")
let char2 = Archer(name: "Archer")

char1.performAttack()
char2.performAttack()


//: Tambien podemos implementar polimorfismo

func performAttack(_ character: Character) {
    character.performAttack()
}
performAttack(char1)
performAttack(char2)

//: Como se puede observar los protocolos nos permite ocultar la implementacion y mostrar la funcionalidad.

//: [Next](@next)
