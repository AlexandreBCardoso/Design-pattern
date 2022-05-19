//
//  RedViewController.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

final class RedViewController: UIViewController, Finishable {
	
	var finish: (() -> Void)?
	
	lazy var okButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Finalizar Tela", for: .normal)
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .red
		buildView()
	}
	
	func buildView() {
		buildHierarchy()
		buildConstraints()
	}
	
	func buildHierarchy() {
		view.addSubview(okButton)
	}
	
	func buildConstraints() {
		NSLayoutConstraint.activate([
			okButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
			okButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
		])
	}
	
	@objc
	func buttonAction() {
		finish?()
	}
	
}
