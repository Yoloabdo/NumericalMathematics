import Foundation

public class BaseTwo {
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
    public static func convert(_ bin: String) -> Decimal {
        let results = bin.compactMap{Int(String($0))}.reversed().enumerated()
        return results.reduce(into: 0) { (result, args) in
            result += Decimal(args.element) * pow(2, args.offset)
        }
    }

}
