import BigInt

protocol CalculateProtocol {
    func factorial(value: BigInt) -> BigInt
}

final class Calculator: CalculateProtocol {
    
    func factorial(value: BigInt) -> BigInt {
        if value == 0 {
            return 1
        } else {
            return value * factorial(value: value - 1)
        }
    }

}
