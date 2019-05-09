import XCTest

class LeapYearUITests: XCTestCase {

    func test_AlertIsShownWithLeapYearMessage_WhenUserEnterValidLeapYear() {
        XCUIApplication().launch()
        
        let app = XCUIApplication()
        app.textFields["Enter an year"].tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        
        let key0 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key0.tap()
        
        let key1 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key1.tap()
        
        let key6 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key6.tap()
        
        app.buttons["Submit"].tap()
        app.alerts.buttons["OK"].tap()
        
    }
    
    func test_AlertIsShownWithNonLeapYearMessage_WhenUserEnterNonLeapYear() {
        XCUIApplication().launch()
        
        let app = XCUIApplication()
        app.textFields["Enter an year"].tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        
        let key0 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key0.tap()
        
        let key1 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key1.tap()
        
        let key3 = app.keys["3"]
        key3.tap()
        
        app.buttons["Submit"].tap()
        app.alerts.buttons["OK"].tap()
        
    }
    
}
