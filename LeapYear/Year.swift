class Year {
    private let year:Int
    
    init(_ year:Int) {
        self.year = year
    }
    
    func isLeapYear() -> Bool {
        if year % 4 == 0 && year % 100 != 0 {
            return true
        }
        
        if year % 400 == 0 {
            return true
        }
        return false
    }
}
