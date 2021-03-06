//
//  BlueColorCoordinator.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import Foundation

final class BlueColorCoordinator: Coordinatable, Finishable {
	
	var finish: (() -> Void)?
	let router: Presentable
	
	init(router: Presentable) {
		self.router = router
	}
	
	func start() {
		var controller = BlueFactory.makeBlue()
		
		controller.finish = { [weak self] in
			self?.showCyan()
		}
		router.push(controller: controller)
	}
	
	func showCyan() {
		var controller = BlueFactory.makeCyan()
		
		controller.finish = { [weak self] in
			self?.finish?()
		}
		router.push(controller: controller)
	}
	
}
