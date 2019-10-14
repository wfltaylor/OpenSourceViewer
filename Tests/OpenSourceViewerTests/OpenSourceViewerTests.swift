import XCTest
@testable import OpenSourceViewer

final class OpenSourceViewerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OpenSourceViewer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
