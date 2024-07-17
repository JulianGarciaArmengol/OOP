//: [Previous](@previous)

/*:
 # Polimorfismo
 
 Es la capacidad de una función o método para comportarse de diferentes maneras según el objeto que la invoque.
 
 ---
 ### Ejemplo
 */

let dog = Dog(color: "Cafe", owner: "Juan")
let lion = Lion(color: "Amarillo", jungleName: "Una Jungla")

let animales: [Animal] = [dog, lion]

animales.forEach { animal in
    animal.eat()
}


//: [Next](@next)
