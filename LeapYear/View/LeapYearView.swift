protocol LeapYearView {
    func showYearLessThanGregorianCalendarYearMessage(preGregorianCalendarMessage:String)
    func showLeapYearMessage(message:String)
    func showNonLeapYearMessage(message:String)
    func showInvalidYearMessage(message:String)
    func enableSubmitButton()
    func disableSubmitButton()
}
