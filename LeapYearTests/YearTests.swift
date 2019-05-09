import XCTest
@testable import LeapYear

class YearTests: XCTestCase {
    
    func test_ReturnTrueForLeapYear_WhenAnYearIsDivisibleBy400() {
        let anYearDivisibleBy400 = 2000
        let year = createAnYear(anYearDivisibleBy400)
        
        XCTAssertTrue(year.isLeapYear())
    }
    
    func test_ReturnFalseForLeapYear_WhenAnYearIsNotDivisibleBy400() {
        let anYearNotDivisibleBy400 = 2001
        let year = createAnYear(anYearNotDivisibleBy400)
        
        XCTAssertFalse(year.isLeapYear())
    }
    
    func test_ReturnFalseForLeapYear_WhenAnYearIsDivisibleBy100ButNotBy400() {
        let anYearDivisibleBy100ButNotBy400 = 1700
        let year = createAnYear(anYearDivisibleBy100ButNotBy400)
        
        XCTAssertFalse(year.isLeapYear())
    }
    
    func test_ReturnTrueForLeapYear_WhenAnYearIsDivisibleBy4ButNotBy100() {
        let anYearDivisibleBy4ButNotBy100 = 2008
        let year = createAnYear(anYearDivisibleBy4ButNotBy100)
        
        XCTAssertTrue(year.isLeapYear())
    }
    
    func test_ReturnFalseForLeapYear_WhenAnYearIsNotDivisibleBy4() {
        let anYearNotDivisibleBy4 = 2019
        let year = createAnYear(anYearNotDivisibleBy4)
        
        XCTAssertFalse(year.isLeapYear())
    }
    
    func test_ReturnTrue_WhenAnYearIsGreaterThanGregorianCalendarStartingYear1582() {
        let anYearGreaterThanGregorianCalendarStartYear = 1583
        let year = createAnYear(anYearGreaterThanGregorianCalendarStartYear)
        
        XCTAssertTrue(year.isYearGreaterThanOrEqualToGregorianCalendarYear())
    }
    
    
    private func createAnYear(_ year: Int) -> Year {
        return Year.init(year)
    }
}
