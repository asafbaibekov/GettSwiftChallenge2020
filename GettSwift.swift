//
//  GettSwift.swift
//  GettSwift
//
//  Created by Shai Mishali.
//  Copyright © 2020 Gett. All rights reserved.
//
//  MMMMMMMMMMMMMMMMMMMMMMMMMNXOolxXMMMMMMMM
//  MMMMMMMMMMMMMMMMMMMMMMMMMNx'.,kNMMMMMMMM
//  MMMMMMMMMMMMMMMMMMMMMMMMMMk.,0MMMMMMMMMM
//  MMMMMMMMMMMMMMWKxokNMMMMMK;.dWMMMMMMMMMM
//  MMMMMMMMMMMMMWk'  .l0XMMX: :XMMMMMMMMMMM
//  MMMMMMMMMMMMMWk.   .cON0: .kMMMMMMMMMMMM
//  MMMMMMMMMMMMMMW0;  .,:;.  :XMMMMMMMMMMMM
//  MMMMMMMMMWNNNNKx,        .xNNNWMMMMMMMMM
//  MMMMMMMWX00Od;.          ,x0000XWMMMMMMM
//  MMMMMMMN0OOd'            ;kOOOO0NMMMMMMM
//  MMMMMMMX0OOl.            ;kOOOO0NMMMMMMM
//  MMMMMMMX0OOl. ..         ;kOOOO0NMMMMMMM
//  MMMMMMMX0Ok; ,l'         ;kOOOO0NMMMMMMM
//  MMMMMMMX0Od..cd'         'dOOOO0NMMMMMMM
//  MMMMMMMX0Oo.'xd.         .dOOOO0NMMMMMMM
//  MMMMMMMX0Oo.;kl.         'xOOOO0NMMMMMMM
//  MMMMMMMX0Od,;dc          .dOOOO0NMMMMMMM
//  MMMMMMMX0OOxdx;          .oOOOO0NMMMMMMM
//  MMMMMMMN0OOOOx,   .;c'   .cOOOOKWMMMMMMM
//  MMMMMMMWNK000k;...;xOl....lO00KNMMMMMMMM
//
//  ########################################
//  ######### Gett iOS Challenge ###########
//  ########################################
//
//  Fix the code below so the tests pass.
//  Please carefully read the rules and in-line comments below.
//
//  You may:
//      - Add any code to the BEGINNING of the test bodies (but not to the middle or end of them).
//      - Add any code outside of the test bodies.
//
//  You must not:
//      - Remove any code from the tests.
//      - Add a fake XCTAssert, an early-return, or other means to "short circuit" the test execution.
//
//  To test your solution, go to Product ▶ Test (or use ⌘ + U)

import XCTest

extension Int {
    subscript(customStringConvertible: CustomStringConvertible, _ closure: () -> String) -> String {
        let result = closure()
            .components(separatedBy: " ")
            .map { String($0.reversed()).capitalized }
            .joined(separator: " ")
        let repeated = String(repeating: customStringConvertible.description, count: self)
        return "\(result)\(repeated.isEmpty ? "" : " \(repeated)")"
    }
}

final class GettSwiftTests: XCTestCase {

    let 👋: (Int) -> Int = { $0 }

    func testGettChallenge1() {
        // Do not edit below this line
        XCTAssertEqual(👋(3)["a"]{ "tteg a ixat !" }, "Gett A Taxi ! aaa")
    }

    func testGettChallenge2() {
        let 🔜 = 1
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)["🚕"]{ "tteg a ixat !" }, "Gett A Taxi ! 🚕")
    }

    func testGettChallenge3() {
        let 🔜 = 5
        let 🌈 = "🌈"
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[🌈]{ "tteg a ixat !" }, "Gett A Taxi ! 🌈🌈🌈🌈🌈")
    }

    func testGettChallenge4() {
        let 🔜 = 2
        let 📱 = "📱"
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[📱]{ "tteg a ixat !" }, "Gett A Taxi ! 📱📱")
    }

    func testGettChallenge5() {
        let 🔜 = 2
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)["hey"]{ "tteg a ixat !" }, "Gett A Taxi ! heyhey")
    }

    func testGettChallenge6() {
        let 🔜 = 2
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[pow(2, 3)]{ "tteg a ixat !" }, "Gett A Taxi ! 88")
    }

    func testGettChallenge7() {
        let 🔜 = 0
        // Do not edit below this line
        XCTAssertEqual(👋(🔜)[6 ^ 3 ^ 2]{ "tteg a ixat !" }, "Gett A Taxi !")
    }

    func testGettChallenge8() {
        let 🔜 = 3
        // Do not edit below this line
        let randomString = UUID().uuidString
        XCTAssertEqual(👋(🔜)[randomString]{ "tteg a ixat !" }, "Gett A Taxi ! \(randomString)\(randomString)\(randomString)")
    }

    // Do not modify these 2 lines
    override func setUp() {}
    override func tearDown() {}
}
