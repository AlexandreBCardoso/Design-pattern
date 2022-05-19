//
//  Presentable.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

protocol Presentable {
	func push(controller: UIViewController)
	func pop()
}
