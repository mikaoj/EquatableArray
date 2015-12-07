import UIKit
import XCTest
import EquatableArray

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNotEqual() {
        let first: EquatableArray = ["Yes", "No"]
        let second: EquatableArray = ["No", "Yes"]
        
        XCTAssert(first != second)
    }
    
    func testEqual() {
        let first: EquatableArray = ["Yes", "No"]
        let second: EquatableArray = ["Yes", "No"]
        
        XCTAssert(first == second)
    }
    
    func testEqualAfterAddingElement() {
        var first: EquatableArray = ["Yes"]
        let second: EquatableArray = ["Yes", "No"]
        
        first.append("No")
        
        XCTAssert(first == second)
    }
    
    func testEqualAfterRemovingElement() {
        var first: EquatableArray = ["Yes", "No", "Maybe"]
        let second: EquatableArray = ["Yes", "No"]
        
        first.removeLast()
        
        XCTAssert(first == second)
    }
}
