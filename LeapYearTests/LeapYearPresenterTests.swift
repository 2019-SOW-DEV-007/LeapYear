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
}

class SpyLeapYearView: LeapYearView {
    fileprivate var isYearLessThanGregorianCalendarMessageDisplayed = false
    
    func showYearLessThanGregorianCalendarYearMessage(message:String) {
        isYearLessThanGregorianCalendarMessageDisplayed = true
    }
}
