//
//  AppCoordinator.swift
//  Quotes
//
//  Created by Alexandre Cardoso on 17/11/21.
//  Copyright © 2021 Code Foundry. All rights reserved.
//

import UIKit

class AppCoordinator {
	
	// MARK: - Properties
	private let navigationController = UINavigationController()
	
	// MARK: - Public API
	var rootViewController: UIViewController {
		return navigationController
	}
	
	// MARK: - Function
	func start() {
		showQuotes()
	}
	
	// MARK: - Helper Function
	private func showQuotes() {
		// Initialize Quotes View Controller
		let quotesViewController = QuotesViewController.instantiate()
		
		quotesViewController.didShowQuote = { [weak self] (quote) in
			self?.showQuote(quote)
		}
		
		quotesViewController.didShowSettings = { [weak self] in
			self?.showSettings()
		}
		
		// Push Quotes View Controller Onto Navigation Stack
		navigationController.pushViewController(quotesViewController, animated: true)
	}
	
	private func showQuote(_ quote: Quote) {
		// Initialize Quote View Controller
		let quoteViewController = QuoteViewController.instantiate()
		quoteViewController.quote = quote
		
		// Push Quotes View Controller Onto Navigation Stack
		navigationController.pushViewController(quoteViewController, animated: true)
	}
	
	private func showSettings() {
		// Initialize Settings View Controller
		let settingsViewController = SettingsViewController.instantiate()
		settingsViewController.didHide = { [weak self] in
			self?.navigationController.dismiss(animated: true)
		}
		
		// Push Quotes View Controller Onto Navigation Stack
		navigationController.present(settingsViewController, animated: true)
	}
	
}
