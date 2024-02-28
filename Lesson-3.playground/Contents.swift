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
print("2. Функції")
