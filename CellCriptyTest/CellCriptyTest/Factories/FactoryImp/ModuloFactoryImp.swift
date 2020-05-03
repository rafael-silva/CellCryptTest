import UIKit

final class ModuloFactoryImp: FactorialFactory {
  
    func factorialOutput() -> UIViewController {
        let presenter = FactorialPresenter(calculator: Calculator())
        let view = FactorialViewController()
        view.presenter = presenter
        return view
    }
}
