//: [Previous](@previous)
import Foundation

/*:
 # Encapsulamiento
 
 Es el concepto de agrupar propiedades y métodos dentro de una clase o estructura. Además, oculta los detalles internos del objeto y expone lo necesario para el uso del mismo. En Swift, esto se logra con modificadores de acceso, los cuales son:
 
 * private - restringe el acceso desde fuera de su alcance(scope).
 * fileprivate -  restringe el acceso desde fuera del archivo en el que fue declarada.
 * internal - restringe el acceso desde fuera del modulo en el que fue declarada.
 * public - permite el acceso desde cualquier lugar
 * open - permite el acceso desde cualquier lugar, además de permitir que otra clase herede de esta.
 
 ---
 
 ## Ejemplo
 */
//: ### private
struct Movie {
    private let id: UUID
    var name: String
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
    
    func getMovieId() -> String {
        return id.uuidString
    }
}

let movie = Movie(name: "Dune")
movie.name

//: No podemos acceder al id ya que es una propiedad *_private_*
//movie.id
//: Pero si podemos acceder a un método que tenga accesso a la propiedad
movie.getMovieId()
//: ### fileprivate
//: No podemos acceder a la clase ya que esta en un archivo diferente
//let filep = SomeFileprivateClass()
//: Pero si podemos acceder mediante otra clase que si tenga permisos
let fp = FileprivateExample()
fp.printsomething()
//: ### Internal
//: No podemos acceder a la clase ya que esta en un modulo diferente
//let int = SomeInternalClass()
//: Pero podemos acceder mediante otra clase que si tenga permisos
let int2 = InternalExample()
int2.printsomething()
//: ### Public
//: Puedo acceder sin restricciones
let pub = SomePublicClass()
pub.printsomething()

//: Pero no puedo hederar de la clase *_public_*
//class NewPublic: SomePublicClass { }

//: ### Open
//: Puedo acceder sin restricciones
let op = SomeOpenClass()
op.printsomething()

//: Ademas de heredar su funcionalidad
class NewOpen: SomeOpenClass {
    func printMore() {print("Im a new open class child")}
}
let newOpen = NewOpen()
newOpen.printsomething()
newOpen.printMore()
