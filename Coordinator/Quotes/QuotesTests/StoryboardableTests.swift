//
//  StoryboardableTests.swift
//  QuotesTests
//
//  Created by Alexandre Cardoso on 17/11/21.
//  Copyright © 2021 Code Foundry. All rights reserved.
//

import XCTest
@testable import Quotes

class StoryboardableTests: XCTestCase {
	
	func testQuotesViewController() {
		_ = QuotesViewController.instantiate()
	}
	
	func testSettingsViewController() {
		 _ = SettingsViewController.instantiate()
	}
	
}
