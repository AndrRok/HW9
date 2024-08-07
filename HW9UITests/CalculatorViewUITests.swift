////
////  CalculatorViewUITests.swift
////  HW9UITests
////
////  Created by ARMBP on 8/7/24.
////
//
//import XCTest
//
//class CalculatorViewUITests: XCTestCase {
//
//    var app: XCUIApplication!
//
//    override func setUpWithError() throws {
//        continueAfterFailure = false
//        app = XCUIApplication()
//        app.launch()
//    }
//
//    func testAddition() throws {
//        let display = app.staticTexts["display"]
//        
//        app.buttons["1"].tap()
//        app.buttons["+"].tap()
//        app.buttons["2"].tap()
//        app.buttons["="].tap()
//        
//        XCTAssertEqual(display.label, "3.0")
//    }
//
//    func testSubtraction() throws {
//        let display = app.staticTexts["display"]
//        
//        app.buttons["5"].tap()
//        app.buttons["-"].tap()
//        app.buttons["3"].tap()
//        app.buttons["="].tap()
//        
//        XCTAssertEqual(display.label, "2.0")
//    }
//
//    func testMultiplication() throws {
//        let display = app.staticTexts["display"]
//        
//        app.buttons["4"].tap()
//        app.buttons["*"].tap()
//        app.buttons["2"].tap()
//        app.buttons["="].tap()
//        
//        XCTAssertEqual(display.label, "8.0")
//    }
//
//    func testDivision() throws {
//        let display = app.staticTexts["display"]
//        
//        app.buttons["8"].tap()
//        app.buttons["/"].tap()
//        app.buttons["2"].tap()
//        app.buttons["="].tap()
//        
//        XCTAssertEqual(display.label, "4.0")
//    }
//
//    func testClear() throws {
//        let display = app.staticTexts["display"]
//        
//        app.buttons["1"].tap()
//        app.buttons["C"].tap()
//        
//        XCTAssertEqual(display.label, "0")
//    }
//}
//
