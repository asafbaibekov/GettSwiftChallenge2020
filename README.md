##  Gett Swift Challenge 2020

### This is my approach of solving the challenge of [@freak4pc](https://github.com/freak4pc)


My Solution is at [GettSwift.swift](./GettSwift.swift)

## The Challenge
[Link to the video explaining the challenge (Hebrew)](https://www.facebook.com/GettCareers/posts/2526854960860898)

Roles: 

### You may:
* Add any code to the BEGINNING of the test bodies (but not to the middle or end of them).
* Add any code outside of the test bodies.

### You must not:
* Remove any code from the tests.
* Add a fake XCTAssert, an early-return, or other means to "short circuit" the test execution.

```
import XCTest

final class GettSwiftTests: XCTestCase {

    func testGettChallenge1() {
        // Do not edit below this line
        XCTAssertEqual(👋(3)["a"]{ "tteg a ixat !" }, "Gett A Taxi ! aaa")
    }

    func testGettChallenge2() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)["🚕"]{ "tteg a ixat !" }, "Gett A Taxi ! 🚕")
    }

    func testGettChallenge3() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[🌈]{ "tteg a ixat !" }, "Gett A Taxi ! 🌈🌈🌈🌈🌈")
    }

    func testGettChallenge4() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[📱]{ "tteg a ixat !" }, "Gett A Taxi ! 📱📱")
    }

    func testGettChallenge5() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)["hey"]{ "tteg a ixat !" }, "Gett A Taxi ! heyhey")
    }

    func testGettChallenge6() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[pow(2, 3)]{ "tteg a ixat !" }, "Gett A Taxi ! 88")
    }

    func testGettChallenge7() {
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[6 ^ 3 ^ 2]{ "tteg a ixat !" }, "Gett A Taxi !")
    }

    func testGettChallenge8() {
        // Do not edit below this line
        let randomString = UUID().uuidString
        XCTAssertEqual(👋(🔜)[randomString]{ "tteg a ixat !" }, "Gett A Taxi ! \(randomString)\(randomString)\(randomString)")
    }

    // Do not modify these 2 lines
    override func setUp() {}
    override func tearDown() {}
}
```