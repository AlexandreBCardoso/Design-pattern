//
//  RedColorCoordinator.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import Foundation
import UIKit

final class RedColorCoordinator: Finishable, Coordinatable {
	
	var finish: (() -> Void)?
	let router: Presentable
	
	init(router: Presentable) {
		self.router = router
	}
	
	func start() {
		var controller = RedFactory.makeRed()
		
		controller.finish = { [weak self] in
			self?.showMagenta()
		}
		router.push(controller: controller)
	}
		
	func showMagenta() {
		var controller = RedFactory.makeMagenta()
		
		controller.finish = { [weak self] in
			self?.finish?()
		}
		router.push(controller: controller)
	}
	
}
