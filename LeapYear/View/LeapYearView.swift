protocol LeapYearView {
    func showYearLessThanGregorianCalendarYearMessage(preGregorianCalendarMessage:String)
    func showLeapYearMessage(leapYear:String)
    func showNonLeapYearMessage(nonLeapYear:String)
    func showInvalidYearMessage(message:String)
    func enableSubmitButton()
    func disableSubmitButton()
}
