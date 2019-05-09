protocol LeapYearView {
    func showYearLessThanGregorianCalendarYearMessage(preGregorianCalendarMessage:String)
    func showLeapYearMessage(leapYear:String)
    func showNonLeapYearMessage(nonLeapYear:String)
    func showInvalidYearMessage(invalidYear:String)
    func enableSubmitButton()
    func disableSubmitButton()
}
