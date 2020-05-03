import UIKit
import BigInt

protocol FactorialView: class {
    func factorialCalculateOutput(_ result: String)
}

final class FactorialPresenter {
    
    // MARK: Public properties
    
    private weak var view: FactorialView?
    private var calculator: Calculator
    
    // MARK: init

    init(calculator: Calculator) {
        self.calculator = calculator
    }
    
    func atachView(_ view: FactorialView) {
        self.view = view
    }
    
    // MARK: Public Apis
    
    func calculateFactorialTouched(value: BigInt) {
        view?.factorialCalculateOutput(String(calculator.factorial(value: value)))
    }
}
