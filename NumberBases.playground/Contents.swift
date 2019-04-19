import UIKit

var digits = 44

let binary = BaseConverter.toBinary(digits)
let digitsConverted = BaseConverter.convertFull(binary)


print("successfully converted: \(digits) to binary: \(binary) and back to: \(digitsConverted.description)")




