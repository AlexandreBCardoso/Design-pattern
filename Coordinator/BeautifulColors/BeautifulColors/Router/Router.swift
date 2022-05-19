//
//  Router.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

final class Router: Presentable {
	
	let navigation: UINavigationController
	
	init(navigation: UINavigationController) {
		self.navigation = navigation
	}
	
	func push(controller: UIViewController) {
		navigation.pushViewController(controller, animated: true)
	}
	
	func pop() {
		navigation.popViewController(animated: true)
	}
	
}
