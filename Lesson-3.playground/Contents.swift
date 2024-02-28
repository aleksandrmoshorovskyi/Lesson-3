import UIKit

//1. Потік керування
print("1. Потік керування")
//Цикл For
print("*Цикл For*")
print("\n")

let products: [String] = [
    "Молоко",       // index == 0
    "Печиво",       // index == 1
    "Кава",         // index == 2
    "Апельсини",    // index == 3
    "Яблука"        // index == 4
]

//for in - range "hard code"
for index in 0 ... 4 {
    print(products[index])
}

print("\n")
//for in - range array count
for index in 0 ..< products.count {
    print(products[index])
}

print("\n-Random\n")
//for in - random
for _ in 0 ..< products.count {
    let randomIndex = Int.random(in: 0 ..< products.count)
    print(products[randomIndex])
}

print("\n*For in - item*\n")
//for in - item
for productItem in products {
    print(productItem)
}

print("\n*For in - enumerated*\n")
//for in - enumerated
for (index, item) in products.enumerated() {
    print("\(index + 1)  \(item)")
}

print("\n*while*\n")
//while

var whileCounter = 0

while whileCounter < (products.count) {
    print("\(products[whileCounter])")
    whileCounter += 1
}

print("\n*Repeat while*\n")
//while

var reapeatWhileCounter = 0

repeat {
    
    print("\(products[reapeatWhileCounter])")
    reapeatWhileCounter += 1
    
} while reapeatWhileCounter < products.count


print("\n\n*If else*\n")
// if else
let weaterIndex: Double = 1

if weaterIndex > 1.0 {
    print("nice weather")
} else if weaterIndex < -1.0 {
    print("pretty cold")
} else {
    print("almost zero")
}

print("\n*switch case*\n")
// switch case

switch weaterIndex {
case 0: print("zero")
case 1: print("one")
case 2: print("two")
default: print("no info")
}


//2. Функції
print("\n\n2. Функції\n")

print("\n - функція, що нічого не приймає і не повертає")
func printWeatherInfo() {
    
    let weaterState = 2
    
    switch weaterState {
//  case 0: print("zero")
//  case 1: print("one")
    case 2: print("two")
    default: print("no info")
    }
}
    
printWeatherInfo()
printWeatherInfo()

print("\n - функція, що приймає параметр чи параметри і не повертає нічого")
func printWeatherInfoWith(temp: Int) {
    
    switch temp {
    case 0: print("zero")
    case 1: print("one")
    case 2: print("two")
    default: print("no info")
    }
    
}

printWeatherInfoWith(temp: 2)
printWeatherInfoWith(temp: 100)

print("\n - функція, що приймає параметр чи параметри і повертає результат")
func getDescription(for temp: Int) -> String {
    
    let prefix = "Weather is - "
    var result = ""
    
    switch temp {
    case 0:
        result = prefix + "0"
    case 1:
        result = prefix + "1"
    case 2:
        result = prefix + "2"
    default:
        result = "no info"
    }
    
    return result
    
}

let someResult = getDescription(for: -5)
print("\(someResult)")


//3. Перечислення
print("\n\n3. Перечислення\n")

/*exampeles
enum TempertureType: String {
    case kelvin = "K"
    case fahrenheit = "F"
    case celsius = "C"
}

var tempType: TempertureType = .celsius

switch tempType {
case .kelvin: "K"
case .fahrenheit: "F"
case .celsius: "C"
}
*/

enum WeatherType {
    case sun
    case rain
    case snow
}

var weatherType: WeatherType = .sun

func printEmoji(for type: WeatherType) {
    
    switch type {
    case .rain:
        print("🌧")
    case .snow:
        print("❄️")
    case .sun:
        print("☀️")
    }
    
}

printEmoji(for: weatherType)


//4. Структури і класи
print("\n\n4. Структури і класи\n")

//struct (value type)
print("\nStruct\n")

struct WeatherInfonStruct {
    var temp: Double = 0.0
    var icon: String = ""
}

//var weatherInfo: WeatherInfonStruct = WeatherInfonStruct()
var weather = WeatherInfonStruct()

weather.temp = 15
weather.icon = "🌈"

struct User {
    var firstName = ""
    var lastName = ""
    var email = ""
    var age: UInt = 0
    
    func isAdult() -> Bool {
        return age > 21
    }
}

var user1 = User()

user1.age = 18
user1.firstName = "John1"
user1.lastName = "Wick"
user1.email = "www@www.com"

print(user1)
print(user1.isAdult())

var user2 = user1

print(user1)
print(user1.isAdult())

user2.firstName = "John2"
user2.age = 25

print(user1)
print(user1.isAdult())
print(user2)
print(user2.isAdult())
print(user1)
print(user1.isAdult())


//class (reference type)
print("\nClass\n")

class Person {
    var firstName = ""
    var lastName = ""
    var email = ""
    var age: UInt = 0
    
    func isAdult() -> Bool {
        return age > 21
    }
    
    func printPerson() {
        print("\(firstName) \(lastName) - \(age)")
    }
}

var person1 = Person()

person1.age = 18
person1.firstName = "John1"
person1.lastName = "Wick"
person1.email = "www@www.com"

//print(person1)
person1.printPerson()
print(person1.isAdult())

var person2 = person1

//print(person1)
person1.printPerson()
print(person1.isAdult())

person2.firstName = "John2"
person2.age = 25

//print(person1)
person1.printPerson()
print(person1.isAdult())

//print(person2)
person2.printPerson()
print(person2.isAdult())

//print(person1)
person1.printPerson()
print(person1.isAdult())
