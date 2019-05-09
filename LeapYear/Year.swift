class Year {
    private let year:Int
    private let GREGORIAN_CALENDAR_START_YEAR = 1582
    
    init(_ year:Int) {
        self.year = year
    }
    
    func isYearGreaterThanOrEqualToGregorianCalendarYear() -> Bool {
        return year >= GREGORIAN_CALENDAR_START_YEAR
    }
    
    func isLeapYear() -> Bool {
        if anYearDivisibleBy400() || anYearDivisibleBy4ButNotBy100() {
            return true
        }
        return false
    }
    
    private func anYearDivisibleBy400() -> Bool {
        return yearDivisibleBy(400)
    }
    
    private func anYearDivisibleBy4ButNotBy100() -> Bool {
        return yearDivisibleBy(4) && !yearDivisibleBy(100)
    }
    
    private func yearDivisibleBy(_ number:Int) -> Bool {
        return year % number == 0
    }
}
