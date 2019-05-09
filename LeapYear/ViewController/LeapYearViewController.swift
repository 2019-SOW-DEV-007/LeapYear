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
        leapYearPresenter.validate(anYear: self.yearTextField.text)
    }
    
    //Mark: Text Field Delegates
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return leapYearPresenter.isValidNumber(number: string)
    }
    
    @IBAction func textFieldDidChange(_ sender: Any) {
        let textField:UITextField = sender as! UITextField
        leapYearPresenter.toggleSubmitButton(year: textField.text!)
    }
    
    //MARK: Leap Year View Protocols
    func showYearLessThanGregorianCalendarYearMessage(message: String) {
        showAlert(message: message)
    }
    
    func showLeapYearMessage(message: String) {
        showAlert(message: message)
    }
    
    func showNonLeapYearMessage(message: String) {
        showAlert(message: message)
    }
    
    func showInvalidYearMessage(message: String) {
        showAlert(message: message)
    }
    
    func enableSubmitButton() {
        self.submitButton.isUserInteractionEnabled = true
        self.submitButton.isEnabled = true
    }
    
    func disableSubmitButton() {
        self.submitButton.isUserInteractionEnabled = false
        self.submitButton.isEnabled = false
    }
    
    // Private Methods
    private func showAlert(message:String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.clearTextField()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func clearTextField() {
        self.yearTextField.text = ""
        leapYearPresenter.toggleSubmitButton(year: self.yearTextField.text!)
    }
}

