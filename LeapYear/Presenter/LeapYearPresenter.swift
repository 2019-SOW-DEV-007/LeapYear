class LeapYearPresenter {
    private let YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR = "Gregorian Calendar was adopted in the year 1582. Please enter an year greater than 1581 to verify an year is leap year or not"
    private let LEAP_YEAR_MESSAGE = " is a Leap Year!"
    private let NON_LEAP_YEAR_MESSAGE = " is not a Leap Year!"
    
    private let leapYearView:LeapYearView
    
    init(leapYearView:LeapYearView) {
        self.leapYearView = leapYearView
    }
    
    func validate(anYear:String) {
        guard let year = Int(anYear) else {
            return
        }
        let calendarYear = Year.init(year)
        
        guard calendarYear.isYearGreaterThanOrEqualToGregorianCalendarYear() else {
            leapYearView.showYearLessThanGregorianCalendarYearMessage(message: YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR)
            return
        }
        
        if calendarYear.isLeapYear() {
            leapYearView.showLeapYearMessage(message: "\(year)" + LEAP_YEAR_MESSAGE)
        }
        else {
            leapYearView.showNonLeapYearMessage(message: "\(year)" + NON_LEAP_YEAR_MESSAGE)
        }
    }
}
