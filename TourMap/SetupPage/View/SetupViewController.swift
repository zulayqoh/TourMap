//
//  SetupViewController.swift
//  TourMap
//
//  Created by Decagon on 22/01/2022.
//

import UIKit

class SetupViewController: UIViewController {
  
  let setupPage = SetupViews()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    configureSetupPage()
  }
  func configureSetupPage() {
    setupPage.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(setupPage)

    NSLayoutConstraint.activate([
      setupPage.topAnchor.constraint(equalTo: view.topAnchor),
      setupPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      setupPage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      setupPage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
}
