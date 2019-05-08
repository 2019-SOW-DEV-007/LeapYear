class Year {
    private let year:Int
    
    init(_ year:Int) {
        self.year = year
    }
    
    func isLeapYear() -> Bool {
        if year % 400 == 0 {
            return true
        }
        return false
    }
}
