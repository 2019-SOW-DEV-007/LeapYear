# LeapYear
This project is about finding whether an year is a leap year or a common year. Gregorian Calendar was adopted in the year 1582. Leap year calculation is not done for years prior to 1582 in this project.

## Getting Started
This is an iOS Application developed with XCode IDE 10.1 and written in Swift programming language

### Prequisites
* Macos version 10.13.6 or later
* Xcode 10.1 with SDK 12.1 & Swift Version 4.2

### Steps To Run This Application
* Open LeapYearKata.xcodeproj file in the LeapYear Folder using Xcode Application
* Select the LeapYearKata target .
* Run the Application using the play button at the top left hand corner after selecting any of the iPhoneSimulator.
* Simulator will launch and you will be able to validate an year for leap year.

### Rules used to calculate leap year
* All years divisible by 400 ARE leap years.
* All years divisible by 100 but not by 400 are NOT leap years. 
* All years divisible by 4 but not by 100 ARE leap years.
* All years not divisible by 4 are NOT leap years.

### Running the test
* To run Unit Test and UI Test, select the LeapYear target, press command + u to run the test cases or Go to Product menu in Xcode and Choose Test option to exeute the test cases

### Design Pattern used to develop this App
* This application is developed with MVP pattern
* All the business logic to calculate leap year is inside the Year.swift class
* All the validation for UI is present inside the LeapYearPresenter.swift file
* All the unit test cases for the business logic is present inside the YearTests.swift file
* All the unit test cases for the validation logic is present inside the LeapYearPresenter.swift file
