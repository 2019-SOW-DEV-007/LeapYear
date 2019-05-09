import XCTest
@testable import LeapYear

class LeapYearPresenterTests: XCTestCase {
    private var leapYearPresenter:LeapYearPresenter!
    private var leapYearView:SpyLeapYearView!
    
    override func setUp() {
        leapYearView = SpyLeapYearView()
        leapYearPresenter = LeapYearPresenter(leapYearView: leapYearView)
    }
    
    func test_showYearLessThanGregorianCalendarYearMessage_whenUserEntersAnYearLessThanGregorianCalendarYear() {
        let yearLessThanGregorianCalendarYear = "1580"
        
        leapYearPresenter.validate(anYear:yearLessThanGregorianCalendarYear)
        
        XCTAssertTrue(leapYearView.isYearLessThanGregorianCalendarMessageDisplayed)
    }
    
    func test_ShowLeapYearMessage_WhenUserEntersAValidLeapYear() {
        let validLeapYear = "2016"
        
        leapYearPresenter.validate(anYear:validLeapYear)
        
        XCTAssertTrue(leapYearView.isLeapYearMessageDisplayed)
    }
    
    func test_ShowNonLeapYearMessage_WhenUserEntersANonLeapYear() {
        let nonLeapYear = "2017"
        
        leapYearPresenter.validate(anYear:nonLeapYear)
        
        XCTAssertTrue(leapYearView.isNonLeapYearMessageDisplayed)
    }
    
    func test_ShowInvalidYearMessage_WhenNilIsPassedAsAParameter() {
        leapYearPresenter.validate(anYear: nil)
        
        XCTAssertTrue(leapYearView.isInvalidYearMessageDisplayed)
    }
    
    func test_ShowInvalidYearMessage_WhenNilIsReturnedWhileConvertingFromStringToInt() {
        
        leapYearPresenter.validate(anYear: "ABCDEFG")
        
        XCTAssertTrue(leapYearView.isInvalidYearMessageDisplayed)
    }
    
    func test_ReturnTrue_WhenUserEntersAValidNumericCharacter() {
        let validNumericCharacter = "2"
        
        XCTAssertTrue(leapYearPresenter.isValidNumber(number: validNumericCharacter))
    }
}

class SpyLeapYearView: LeapYearView {
    fileprivate var isYearLessThanGregorianCalendarMessageDisplayed = false
    fileprivate var isLeapYearMessageDisplayed = false
    fileprivate var isNonLeapYearMessageDisplayed = false
    fileprivate var isInvalidYearMessageDisplayed = false
    
    func showYearLessThanGregorianCalendarYearMessage(message:String) {
        isYearLessThanGregorianCalendarMessageDisplayed = true
    }
    
    func showLeapYearMessage(message: String) {
        isLeapYearMessageDisplayed = true
    }
    
    func showNonLeapYearMessage(message: String) {
        isNonLeapYearMessageDisplayed = true
    }
    
    func showInvalidYearMessage(message: String) {
        isInvalidYearMessageDisplayed = true
    }
}
