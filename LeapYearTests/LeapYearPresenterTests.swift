import XCTest
@testable import LeapYear

class LeapYearPresenterTests: XCTestCase {
    
    func test_showYearLessThanGregorianCalendarYearMessage_whenUserEntersAnYearLessThanGregorianCalendarYear() {
        let yearLessThanGregorianCalendarYear = "1580"
        let leapYearView = SpyLeapYearView()
        let leapYearPresenter = LeapYearPresenter(leapYearView: leapYearView)
        
        leapYearPresenter.validate(anYear:yearLessThanGregorianCalendarYear)
        
        XCTAssertTrue(leapYearView.isYearLessThanGregorianCalendarMessageDisplayed)
    }
    
    func test_ShowLeapYearMessage_WhenUserEntersAValidLeapYear() {
        let validLeapYear = "2016"
        let leapYearView = SpyLeapYearView()
        let leapYearPresenter = LeapYearPresenter(leapYearView: leapYearView)
        
        leapYearPresenter.validate(anYear:validLeapYear)
        
        XCTAssertTrue(leapYearView.isLeapYearMessageDisplayed)
    }
}

class SpyLeapYearView: LeapYearView {
    fileprivate var isYearLessThanGregorianCalendarMessageDisplayed = false
    fileprivate var isLeapYearMessageDisplayed = false

    func showYearLessThanGregorianCalendarYearMessage(message:String) {
        isYearLessThanGregorianCalendarMessageDisplayed = true
    }
    
    func showLeapYearMessage(message: String) {
        isLeapYearMessageDisplayed = true
    }
}
