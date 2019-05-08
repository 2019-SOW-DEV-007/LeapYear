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
    
    private func createAnYear(_ year: Int) -> Year {
        return Year.init(year)
    }
}
