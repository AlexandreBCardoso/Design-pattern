//
//  ColorViewController.swift
//  BeautifulColors
//
//  Created by Alexandre Cardoso on 15/11/21.
//

import UIKit

final class ColorViewController: UIViewController, Finishable {
	
	var finish: (() -> Void)?
	private var color: UIColor
	
	lazy var okButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Finalizar Tela", for: .normal)
		button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
		return button
	}()
	
	init(color: UIColor) {
		self.color = color
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = color
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
