//
//  AppCoordinator.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import Foundation

final class AppCoordinator: Coordinatable {
	
	/*
	 Esse array vai servir para controle de memória.
	 Caso a gente não adicione nossos Coordinators nesse array,
	 tanto o Red quanto o Blue Coordinator não terão nenhuma ligação
	 forte que os deixe carregados, com isso antes mesmo de alguma
	 tela aparecer no simulador eles serão dealocados pelo nosso querido ARC.
	 */
	private var childCoordinator: [Coordinatable] = []
	
	let router: Presentable
	
	init(router: Presentable) {
		self.router = router
	}
	
	func start() {
		showRedFlow()
	}
	
	func showRedFlow() {
		let coordinator = RedColorCoordinator(router: router)
		
		coordinator.finish = { [weak self] in
			self?.showBlueFlow()
		}
		childCoordinator.append(coordinator)
		coordinator.start()
	}
	
	func showBlueFlow() {
		let coordinator = BlueColorCoordinator(router: router)
		
		coordinator.finish = {
			fatalError("O app acabou aqui, valeu…")
		}
		childCoordinator.append(coordinator)
		coordinator.start()
	}
	
}
