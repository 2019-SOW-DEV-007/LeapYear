import XCTest
@testable import LeapYear

class YearTests: XCTestCase {
    
    func test_ReturnTrueForLeapYear_WhenAnYearIsDivisibleBy400() {
        let anYearDivisibleBy400 = 2000
        let year = Year.init(anYearDivisibleBy400)
        
        XCTAssertTrue(year.isLeapYear())
    }    
}
