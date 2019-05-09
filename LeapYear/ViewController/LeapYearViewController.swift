import UIKit

class LeapYearViewController: UIViewController, UITextFieldDelegate, LeapYearView {
    
    @IBOutlet weak private var yearTextField: UITextField!
    @IBOutlet weak private var submitButton: UIButton!
    
    private var leapYearPresenter:LeapYearPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leapYearPresenter = LeapYearPresenter.init(leapYearView: self)
    }
    
    //MARK: Button Action
    @IBAction func submitButtonAction(_ sender: Any) {
    }
    
    //Mark: Text Field Delegates
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return leapYearPresenter.isValidNumber(number: string)
    }
    
    //MARK: Leap Year View Protocols
    func showYearLessThanGregorianCalendarYearMessage(message: String) {
        
    }
    
    func showLeapYearMessage(message: String) {
        
    }
    
    func showNonLeapYearMessage(message: String) {
        
    }
    
    func showInvalidYearMessage(message: String) {
        
    }
    
    func enableSubmitButton() {
        
    }
    
    func disableSubmitButton() {
        
    }
}

