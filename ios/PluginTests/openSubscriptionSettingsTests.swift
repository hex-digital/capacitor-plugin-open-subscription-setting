import XCTest
@testable import Plugin

class openSubscriptionSettingsTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTriggerOpenSubscriptions() {
        let implementation = openSubscriptionSettings()

        XCTAssetNoThrow(implementation.triggerOpenSubscriptions())
    }

    func testTriggerOpenSettings() {
        let implementation = openSubscriptionSettings()

        XCTAssetNoThrow(implementation.triggerOpenSettings())
    }
}
