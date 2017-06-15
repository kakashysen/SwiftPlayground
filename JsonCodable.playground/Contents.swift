//: Playground - noun: a place where people can play


import Foundation
import Alamofire
import PlaygroundSupport

// https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types

PlaygroundPage.current.needsIndefiniteExecution = true
URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

func requestJson() {
    Alamofire.request("http://swapi.co/api/people/1/").responseJSON { response in
//        print(response.request ?? "No original URL request")  // original URL request
//        print(response.response ?? "No HTTP URL response") // HTTP URL response
//        print(response.data ?? "No server data")     // server data
//        print(response.result)   // result of response serialization
        
        if let JSON = response.result.value {
            print("=========================== STAR WARS API ==========================")
            print("JSON: \(JSON)")
            print("====================================================================")
        }
    }
}

struct Person {
    var birthYear: String
    var eyeColor: String
    var films: [String]
    var gender: String
    var hairColor: String
    var height:Int
    var created: Date
}

struct Owner {
    var name: String
}

struct Dog {
    var name: String
    var breed: String
    var ege: Int
    var owner: Owner
}
let dog = Dog(name: "Spike", breed: "Labrador", ege: 6, owner: Owner(name: "Jose"))
let mirror = Mirror(reflecting: dog)

for (name, value) in mirror.children {
    guard let name = name else {continue}
    print("propertie: \(name): \(type(of: value)) = \(value)")
}


requestJson()