//
//  RedFactory.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

typealias FinishController = UIViewController & Finishable

enum RedFactory {
	
	static func makeRed() -> FinishController {
		RedViewController()
	}
	
	static func makeMagenta() -> FinishController {
		MagentaViewController()
	}
	
}
