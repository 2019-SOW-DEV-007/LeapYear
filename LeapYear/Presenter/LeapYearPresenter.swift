import Foundation

class LeapYearPresenter {
    private let YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR = "Gregorian Calendar was adopted in the year 1582. Please enter an year greater than 1581 to verify an year is leap year or not"
    private let LEAP_YEAR_MESSAGE = " is a Leap Year!"
    private let NON_LEAP_YEAR_MESSAGE = " is not a Leap Year!"
    private let INVALID_YEAR_MESSAGE = "Please enter a valid year"
    private let ALLOWED_NUMBERS = "0123456789"
    
    private let leapYearView:LeapYearView
    
    init(leapYearView:LeapYearView) {
        self.leapYearView = leapYearView
    }
    
    func toggleSubmitButton(year:String) {
        if year.count > 0 {
            leapYearView.enableSubmitButton()
        }
        else {
            leapYearView.disableSubmitButton()
        }
    }
    
    func validate(anYear:String?) {
        guard let yearInString = anYear, let year = Int(yearInString) else {
            leapYearView.showInvalidYearMessage(message: INVALID_YEAR_MESSAGE)
            return
        }
        let calendarYear = Year.init(year)
        
        guard calendarYear.isYearGreaterThanOrEqualToGregorianCalendarYear() else {
            leapYearView.showYearLessThanGregorianCalendarYearMessage(preGregorianCalendarMessage: YEAR_LESS_THAN_GREGORIAN_CALENDAR_YEAR)
            return
        }
        
        if calendarYear.isLeapYear() {
            leapYearView.showLeapYearMessage(leapYear: "\(year)" + LEAP_YEAR_MESSAGE)
        }
        else {
            leapYearView.showNonLeapYearMessage(nonLeapYear: "\(year)" + NON_LEAP_YEAR_MESSAGE)
        }
    }
    
    func isValidNumber(number:String) -> Bool {
        let allowedNumber = CharacterSet.init(charactersIn: "0123456789")
        let character = CharacterSet.init(charactersIn: number)
        return allowedNumber.isSuperset(of: character)
    }
}
