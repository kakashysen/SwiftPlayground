//: Playground - noun: a place where people can play

import UIKit


let  a = 1
var b = 3

b = 4

var optional: String?

var array = [1,2,3]
var dict = ["a":1, "b":2]

var obj: Any



var json:[String:Any] = ["user":"jose","phones":["123","456","789"]]

for (key, value) in json {
    print("key: \(key) - value: \(value)")
    if value is Array<String> {
        print("is a collection")
    }
}




class Casa {
    var puertas:Int?
    var ventanas: Int?
    
}

struct Carro {
    
    var marca: String
    
    func encender() {
        print("encendido")
    }
    
    func andar(marcha: Int) -> Bool {
        print("arranca en marcha \(marcha)")
        return true
    }
    
    
}

enum TipoCarro {
    case sedan
    case campero
    case taxi
}

var tipo = TipoCarro.sedan

switch tipo {
case .campero, .taxi:
    print("campero")
case .sedan:
    print("sedan")
}


var  carro = Carro(marca: "Renault")
carro.encender()
carro.andar(marcha: 1)
print(carro.marca)


var casa1 = Casa()
casa1.puertas = 1
if let puertas = casa1.puertas {
    if let ventanas = casa1.ventanas {
        print("hay puertas \(puertas) y ventanas \(ventanas)")
    }
}


func numPuertas() {
    let casa2 = Casa()
    guard let puertas = casa2.puertas else {
        print("no hay puertas")
        return
    }
    
    guard let ventanas = casa2.ventanas  else {
        print("no hay ventanas")
        return
    }
    
    print("si hay puertas: \(puertas)")
    print("si hay ventanas: \(ventanas)")
}

numPuertas()


var carro1 = carro
carro1.marca = "Mazda"
print(carro1.marca)
print(carro.marca)




