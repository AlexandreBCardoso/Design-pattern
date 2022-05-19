//
//  BlueFactory.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

enum BlueFactory {
	
	static func makeBlue() -> FinishController {
		BlueViewController()
	}
	
	static func makeCyan() -> FinishController {
		CyanViewController()
	}
	
}
