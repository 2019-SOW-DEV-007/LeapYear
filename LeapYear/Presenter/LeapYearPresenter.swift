class LeapYearPresenter {
    private let YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR = "Gregorian Calendar was adopted in the year 1582. Please enter an year greater than 1581 to verify an year is leap year or not"
    
    private let leapYearView:LeapYearView
    
    init(leapYearView:LeapYearView) {
        self.leapYearView = leapYearView
    }
    
    func validate(anYear:String) {
        guard let year = Int(anYear) else {
            return
        }
        let calendarYear = Year.init(year)
        if !calendarYear.isYearGreaterThanOrEqualToGregorianCalendarYear() {
            leapYearView.showYearLessThanGregorianCalendarYearMessage(message: YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR)
        }
    }
}
