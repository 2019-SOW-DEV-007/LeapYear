import XCTest
@testable import LeapYear

class YearTests: XCTestCase {
    
    func test_ReturnTrueForLeapYear_WhenAnYearIsDivisibleBy400() {
        let anYearDivisibleBy400 = 2000
        let year = Year.init(anYearDivisibleBy400)
        
        XCTAssertTrue(year.isLeapYear())
    }
    
    func test_ReturnFalseForLeapYear_WhenAnYearIsNotDivisibleBy400() {
        let anYearNotDivisibleBy400 = 2001
        let year = Year.init(anYearNotDivisibleBy400)
        
        XCTAssertFalse(year.isLeapYear())
    }
}
