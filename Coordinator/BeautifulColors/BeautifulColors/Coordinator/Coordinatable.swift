//
//  Coordinatable.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

protocol Coordinatable {
	var router: Presentable { get }
	init(router: Presentable)
	func start()
}
