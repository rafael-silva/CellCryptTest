import Quick
import Nimble

@testable import CellCriptyTest


class FactorialPresenterTests: QuickSpec {
    
    override func spec() {
        
        var sut_presenter: FactorialPresenter!
        var viewSpy: FactorialViewSpy!
        
        beforeEach {
            viewSpy = FactorialViewSpy()
            sut_presenter = FactorialPresenter(calculator: Calculator())
            sut_presenter.atachView(viewSpy)
        }
        
        describe("FactorialPresenter") {
            
            describe("when the calculate button was called") {
                
                it("then should be presented result") {
                    sut_presenter.calculateFactorialTouched(value: 5)
                    expect(viewSpy?.calculateResult) == "120"
                }
            }
        }
    }
    
}

private class FactorialViewSpy: FactorialView {
    
    var calculateResult: String?
    
    func factorialCalculateOutput(_ result: String) {
        calculateResult = result
    }
    
}
