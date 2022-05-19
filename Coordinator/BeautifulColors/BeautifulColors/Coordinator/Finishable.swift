//
//  Finishable.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import Foundation

protocol Finishable {
	var finish: ( () -> Void )? { get set }
}
