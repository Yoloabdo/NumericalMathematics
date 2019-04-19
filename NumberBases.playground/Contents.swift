import UIKit

var digits = 44

let binary = BaseTwo.toBinary(digits)
let digitsConverted = BaseTwo.convert(binary)


print("successfully converted: \(digits) to binary: \(binary) and back to: \(digitsConverted.description)")
