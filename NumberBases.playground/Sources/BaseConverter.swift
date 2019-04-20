import Foundation

public class BaseConverter {
    /// Convert decimal numbers to binary
    ///
    /// - Parameter decimal: int number that you want to convery
    /// - Returns: string representation of base 2 number
    public static func toBinary(_ decimal: Int) -> String {
        var stack = [Int]()
        var decNumber = decimal
        while decNumber > 0 {
            let rem = decNumber % 2
            stack.append(rem)
            decNumber = decNumber / 2
        }
        
        let results = stack.reversed().map{String(describing: $0)}.joined()
        return results
    }
    
    
    /// Convert base 2 numbers to decimal
    ///
    /// - Parameter bin: string representation of base 2 number
    /// - Returns: decimal output of converting
    public static func convert(_ bin: String, base: Double = 2) -> Double {
        let results = bin.compactMap{Int(String($0))}.reversed().enumerated()
        return results.reduce(into: 0) { (result, args) in
            result += Double(args.element) * pow(base, Double(args.offset))
        }
    }
    
    public static func convertFraction(_ bin: String, base: Double = 2) -> Double {
        let results = bin.compactMap{Int(String($0))}.enumerated()
        return results.reduce(into: 0) { (result, args) in
            result += Double(args.element) / pow(base, Double(args.offset + 1))
        }
    }


    public static func convertFull(_ bin: String) -> String {
        let splitted = bin.split(separator: ".")
        var results = convert(String(splitted.first!))
        guard splitted.count > 1, let second = splitted.last else {
            return results.description
        }
        results += convertFraction(String(second))
        return results.description
    }

}
