import UIKit
import BigInt

final class FactorialViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var buttonCalculate: UIButton!
    @IBOutlet weak var textFieldValue: UITextField!
    
    var presenter: FactorialPresenter?
    
    // MARK: Initialization
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.atachView(self)
    }
    
    // MARK: IBAction

    @IBAction private func calculateTouched(_ sender: Any) {
        guard let textInput = textFieldValue.text, let bigIntValue = BigInt(textInput) else { return }
        
        presenter?.calculateFactorialTouched(value: bigIntValue)
    }
    
}

// MARK: - Protocol

extension FactorialViewController: FactorialView {
    
    func factorialCalculateOutput(_ result: String) {
        labelResult.text = result
    }
    
}
